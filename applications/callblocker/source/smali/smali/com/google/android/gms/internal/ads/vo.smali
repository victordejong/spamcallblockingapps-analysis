.class public Lcom/google/android/gms/internal/ads/vo;
.super Lcom/google/android/gms/internal/ads/vj;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x11
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/vj;-><init>(Lcom/google/android/gms/internal/ads/vl;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/ContentResolver;)I
    .locals 2

    .prologue
    .line 49
    const-string/jumbo v0, "wifi_on"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final a(Landroid/content/Context;Landroid/graphics/Bitmap;ZF)Landroid/graphics/drawable/Drawable;
    .locals 4

    .prologue
    .line 33
    if-eqz p3, :cond_0

    const/4 v0, 0x0

    cmpg-float v0, p4, v0

    if-lez v0, :cond_0

    const/high16 v0, 0x41c80000    # 25.0f

    cmpl-float v0, p4, v0

    if-lez v0, :cond_1

    .line 34
    :cond_0
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 48
    :goto_0
    return-object v0

    .line 36
    :cond_1
    :try_start_0
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {p2, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 37
    invoke-static {v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 38
    invoke-static {p1}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object v2

    .line 39
    invoke-static {v2}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object v3

    .line 40
    invoke-static {v2, v0}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v0

    .line 41
    invoke-static {v2, v1}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v2

    .line 42
    invoke-virtual {v3, p4}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    .line 43
    invoke-virtual {v3, v0}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    .line 44
    invoke-virtual {v3, v2}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    .line 45
    invoke-virtual {v2, v1}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    .line 46
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 48
    :catch_0
    move-exception v0

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/xi;->a()Lcom/google/android/gms/internal/ads/xi;

    move-result-object v1

    .line 7
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/xi;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    invoke-static {}, Lcom/google/android/gms/common/util/d;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    new-instance v0, Lcom/google/android/gms/internal/ads/xl;

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/ads/xl;-><init>(Lcom/google/android/gms/internal/ads/xi;Landroid/content/Context;)V

    .line 10
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/xj;->a(Landroid/content/Context;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 14
    :goto_0
    iput-object v0, v1, Lcom/google/android/gms/internal/ads/xi;->a:Ljava/lang/String;

    .line 15
    :cond_0
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/xi;->a:Ljava/lang/String;

    .line 16
    return-object v0

    .line 11
    :cond_1
    invoke-static {p1}, Lcom/google/android/gms/common/h;->d(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    .line 12
    new-instance v2, Lcom/google/android/gms/internal/ads/xk;

    invoke-direct {v2, v1, v0, p1}, Lcom/google/android/gms/internal/ads/xk;-><init>(Lcom/google/android/gms/internal/ads/xi;Landroid/content/Context;Landroid/content/Context;)V

    .line 13
    invoke-static {p1, v2}, Lcom/google/android/gms/internal/ads/xj;->a(Landroid/content/Context;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;Landroid/webkit/WebSettings;)Z
    .locals 1

    .prologue
    .line 2
    invoke-super {p0, p1, p2}, Lcom/google/android/gms/internal/ads/vj;->a(Landroid/content/Context;Landroid/webkit/WebSettings;)Z

    .line 3
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 4
    const/4 v0, 0x1

    return v0
.end method

.method public final b(Landroid/content/ContentResolver;)I
    .locals 2

    .prologue
    .line 50
    const-string/jumbo v0, "airplane_mode_on"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final b(Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 17
    invoke-static {}, Lcom/google/android/gms/internal/ads/xi;->a()Lcom/google/android/gms/internal/ads/xi;

    move-result-object v0

    .line 18
    const-string/jumbo v1, "Updating user agent."

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/uu;->a(Ljava/lang/String;)V

    .line 19
    invoke-static {p1}, Landroid/webkit/WebSettings;->getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 20
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/xi;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 21
    invoke-static {p1}, Lcom/google/android/gms/common/h;->d(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v2

    .line 22
    invoke-static {}, Lcom/google/android/gms/common/util/d;->a()Z

    move-result v3

    if-nez v3, :cond_0

    if-nez v2, :cond_1

    .line 23
    :cond_0
    invoke-static {p1}, Landroid/webkit/WebSettings;->getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 24
    const-string/jumbo v4, "admob_user_agent"

    const/4 v5, 0x0

    .line 25
    invoke-virtual {p1, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 26
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string/jumbo v5, "user_agent"

    invoke-interface {v4, v5, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 27
    if-nez v2, :cond_3

    .line 28
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 30
    :cond_1
    :goto_0
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/xi;->a:Ljava/lang/String;

    .line 31
    :cond_2
    const-string/jumbo v0, "User agent is updated."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->a(Ljava/lang/String;)V

    .line 32
    return-void

    .line 29
    :cond_3
    const-string/jumbo v2, "admob_user_agent"

    invoke-static {p1, v3, v2}, Lcom/google/android/gms/common/util/p;->a(Landroid/content/Context;Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)V

    goto :goto_0
.end method
