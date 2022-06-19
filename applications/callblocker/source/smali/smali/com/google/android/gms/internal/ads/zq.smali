.class public final Lcom/google/android/gms/internal/ads/zq;
.super Landroid/widget/FrameLayout;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zl;


# annotations
.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/aad;

.field private final b:Landroid/widget/FrameLayout;

.field private final c:Lcom/google/android/gms/internal/ads/o;

.field private final d:Lcom/google/android/gms/internal/ads/aaf;

.field private final e:J

.field private f:Lcom/google/android/gms/internal/ads/zo;

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:J

.field private l:J

.field private m:Ljava/lang/String;

.field private n:[Ljava/lang/String;

.field private o:Landroid/graphics/Bitmap;

.field private p:Landroid/widget/ImageView;

.field private q:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/aad;IZLcom/google/android/gms/internal/ads/o;Lcom/google/android/gms/internal/ads/aae;)V
    .locals 8

    .prologue
    const/4 v7, -0x1

    .line 15
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 16
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zq;->a:Lcom/google/android/gms/internal/ads/aad;

    .line 17
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zq;->c:Lcom/google/android/gms/internal/ads/o;

    .line 18
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zq;->b:Landroid/widget/FrameLayout;

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zq;->b:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zq;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 20
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/aad;->g()Lcom/google/android/gms/ads/internal/a;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/aad;->g()Lcom/google/android/gms/ads/internal/a;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/a;->b:Lcom/google/android/gms/internal/ads/zn;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 23
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zn;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/aad;IZLcom/google/android/gms/internal/ads/o;Lcom/google/android/gms/internal/ads/aae;)Lcom/google/android/gms/internal/ads/zo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zq;->f:Lcom/google/android/gms/internal/ads/zo;

    .line 24
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zq;->f:Lcom/google/android/gms/internal/ads/zo;

    if-eqz v0, :cond_0

    .line 25
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zq;->b:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zq;->f:Lcom/google/android/gms/internal/ads/zo;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x11

    invoke-direct {v2, v7, v7, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 26
    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->t:Lcom/google/android/gms/internal/ads/ect;

    .line 27
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 28
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zq;->m()V

    .line 30
    :cond_0
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zq;->p:Landroid/widget/ImageView;

    .line 31
    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->x:Lcom/google/android/gms/internal/ads/ect;

    .line 32
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 33
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zq;->e:J

    .line 34
    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->v:Lcom/google/android/gms/internal/ads/ect;

    .line 35
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 36
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zq;->j:Z

    .line 37
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zq;->c:Lcom/google/android/gms/internal/ads/o;

    if-eqz v0, :cond_1

    .line 38
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zq;->c:Lcom/google/android/gms/internal/ads/o;

    const-string/jumbo v2, "spinner_used"

    .line 39
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zq;->j:Z

    if-eqz v0, :cond_4

    const-string/jumbo v0, "1"

    .line 40
    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/ads/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/aaf;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/aaf;-><init>(Lcom/google/android/gms/internal/ads/zq;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zq;->d:Lcom/google/android/gms/internal/ads/aaf;

    .line 42
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zq;->f:Lcom/google/android/gms/internal/ads/zo;

    if-eqz v0, :cond_2

    .line 43
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zq;->f:Lcom/google/android/gms/internal/ads/zo;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zo;->a(Lcom/google/android/gms/internal/ads/zl;)V

    .line 44
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zq;->f:Lcom/google/android/gms/internal/ads/zo;

    if-nez v0, :cond_3

    .line 45
    const-string/jumbo v0, "AdVideoUnderlay Error"

    const-string/jumbo v1, "Allocating player failed."

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zq;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    :cond_3
    return-void

    .line 39
    :cond_4
    const-string/jumbo v0, "0"

    goto :goto_0
.end method

.method public static a(Lcom/google/android/gms/internal/ads/aad;)V
    .locals 3

    .prologue
    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    const-string/jumbo v1, "event"

    const-string/jumbo v2, "no_video_view"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    const-string/jumbo v1, "onVideoEvent"

    invoke-interface {p0, v1, v0}, Lcom/google/android/gms/internal/ads/aad;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 4
    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/ads/aad;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 10
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 11
    const-string/jumbo v1, "event"

    const-string/jumbo v2, "decoderProps"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    const-string/jumbo v1, "error"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    const-string/jumbo v1, "onVideoEvent"

    invoke-interface {p0, v1, v0}, Lcom/google/android/gms/internal/ads/aad;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 14
    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/ads/aad;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/aad;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;>;)V"
        }
    .end annotation

    .prologue
    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    const-string/jumbo v1, "event"

    const-string/jumbo v2, "decoderProps"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    const-string/jumbo v1, "mimeTypes"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    const-string/jumbo v1, "onVideoEvent"

    invoke-interface {p0, v1, v0}, Lcom/google/android/gms/internal/ads/aad;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 9
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/zq;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 262
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zq;->b(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method private final varargs b(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 239
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 240
    const-string/jumbo v0, "event"

    invoke-virtual {v4, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    array-length v5, p2

    const/4 v0, 0x0

    move v2, v0

    move-object v3, v1

    :goto_0
    if-ge v2, v5, :cond_1

    aget-object v0, p2, v2

    .line 243
    if-nez v3, :cond_0

    .line 247
    :goto_1
    add-int/lit8 v2, v2, 0x1

    move-object v3, v0

    goto :goto_0

    .line 245
    :cond_0
    invoke-virtual {v4, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    .line 246
    goto :goto_1

    .line 248
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zq;->a:Lcom/google/android/gms/internal/ads/aad;

    const-string/jumbo v1, "onVideoEvent"

    invoke-interface {v0, v1, v4}, Lcom/google/android/gms/internal/ads/aad;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 249
    return-void
.end method

.method private final p()Z
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zq;->p:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final q()V
    .locals 2

    .prologue
    .line 250
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zq;->a:Lcom/google/android/gms/internal/ads/aad;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/aad;->f()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 258
    :cond_0
    :goto_0
    return-void

    .line 252
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zq;->h:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zq;->i:Z

    if-nez v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zq;->a:Lcom/google/android/gms/internal/ads/aad;

    .line 254
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/aad;->f()Landroid/app/Activity;

    move-result-object v0

    .line 255
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    .line 256
    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 257
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zq;->h:Z

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zq;->d:Lcom/google/android/gms/internal/ads/aaf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/aaf;->b()V

    .line 121
    sget-object v0, Lcom/google/android/gms/internal/ads/ve;->a:Lcom/google/android/gms/internal/ads/cnz;

    new-instance v1, Lcom/google/android/gms/internal/ads/zr;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zr;-><init>(Lcom/google/android/gms/internal/ads/zq;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/cnz;->post(Ljava/lang/Runnable;)Z

    .line 122
    return-void
.end method

.method public final a(FF)V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zq;->f:Lcom/google/android/gms/internal/ads/zo;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zq;->f:Lcom/google/android/gms/internal/ads/zo;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zo;->a(FF)V

    .line 59
    :cond_0
    return-void
.end method

.method public final a(I)V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zq;->f:Lcom/google/android/gms/internal/ads/zo;

    if-nez v0, :cond_0

    .line 77
    :goto_0
    return-void

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zq;->f:Lcom/google/android/gms/internal/ads/zo;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zo;->a(I)V

    goto :goto_0
.end method

.method public final a(II)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 210
    .line 211
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zq;->j:Z

    if-eqz v0, :cond_1

    .line 212
    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->w:Lcom/google/android/gms/internal/ads/ect;

    .line 213
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 214
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    div-int v0, p1, v0

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 215
    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->w:Lcom/google/android/gms/internal/ads/ect;

    .line 216
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 217
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    div-int v0, p2, v0

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 218
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zq;->o:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zq;->o:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-ne v2, v1, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zq;->o:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-eq v2, v0, :cond_1

    .line 219
    :cond_0
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zq;->o:Landroid/graphics/Bitmap;

    .line 220
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zq;->q:Z

    .line 221
    :cond_1
    return-void
.end method

.method public final a(IIII)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 47
    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    .line 53
    :cond_0
    :goto_0
    return-void

    .line 49
    :cond_1
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, p3, p4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 50
    invoke-virtual {v0, p1, p2, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 51
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zq;->b:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 52
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zq;->requestLayout()V

    goto :goto_0
.end method

.method public final a(Landroid/view/MotionEvent;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 106
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zq;->f:Lcom/google/android/gms/internal/ads/zo;

    if-nez v0, :cond_0

    .line 109
    :goto_0
    return-void

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zq;->f:Lcom/google/android/gms/internal/ads/zo;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zo;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 156
    const-string/jumbo v0, "error"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "what"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "extra"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p2, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zq;->b(Ljava/lang/String;[Ljava/lang/String;)V

    .line 157
    return-void
.end method

.method public final a(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zq;->m:Ljava/lang/String;

    .line 55
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zq;->n:[Ljava/lang/String;

    .line 56
    return-void
.end method

.method final synthetic a(Z)V
    .locals 4

    .prologue
    .line 259
    const-string/jumbo v0, "windowFocusChanged"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "hasWindowFocus"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 260
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 261
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zq;->b(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public final b()V
    .locals 7

    .prologue
    .line 123
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zq;->f:Lcom/google/android/gms/internal/ads/zo;

    if-nez v0, :cond_1

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 125
    :cond_1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zq;->l:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zq;->f:Lcom/google/android/gms/internal/ads/zo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zo;->getDuration()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    .line 127
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zq;->f:Lcom/google/android/gms/internal/ads/zo;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zo;->getVideoWidth()I

    move-result v1

    .line 128
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zq;->f:Lcom/google/android/gms/internal/ads/zo;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zo;->getVideoHeight()I

    move-result v2

    .line 129
    const-string/jumbo v3, "canplaythrough"

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "duration"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 130
    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    const/4 v0, 0x2

    const-string/jumbo v5, "videoWidth"

    aput-object v5, v4, v0

    const/4 v0, 0x3

    .line 131
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x4

    const-string/jumbo v1, "videoHeight"

    aput-object v1, v4, v0

    const/4 v0, 0x5

    .line 132
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 133
    invoke-direct {p0, v3, v4}, Lcom/google/android/gms/internal/ads/zq;->b(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final b(I)V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zq;->f:Lcom/google/android/gms/internal/ads/zo;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zo;->c(I)V

    .line 97
    return-void
.end method

.method public final c()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 135
    .line 136
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zq;->a:Lcom/google/android/gms/internal/ads/aad;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/aad;->f()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 137
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zq;->h:Z

    if-nez v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zq;->a:Lcom/google/android/gms/internal/ads/aad;

    .line 139
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/aad;->f()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 140
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zq;->i:Z

    .line 141
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zq;->i:Z

    if-nez v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zq;->a:Lcom/google/android/gms/internal/ads/aad;

    .line 143
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/aad;->f()Landroid/app/Activity;

    move-result-object v0

    .line 144
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v2, 0x80

    .line 145
    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    .line 146
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zq;->h:Z

    .line 147
    :cond_0
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zq;->g:Z

    .line 148
    return-void

    .line 140
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c(I)V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zq;->f:Lcom/google/android/gms/internal/ads/zo;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zo;->d(I)V

    .line 99
    return-void
.end method

.method public final d()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 149
    const-string/jumbo v0, "pause"

    new-array v1, v2, [Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zq;->b(Ljava/lang/String;[Ljava/lang/String;)V

    .line 150
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zq;->q()V

    .line 151
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zq;->g:Z

    .line 152
    return-void
.end method

.method public final d(I)V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zq;->f:Lcom/google/android/gms/internal/ads/zo;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zo;->e(I)V

    .line 101
    return-void
.end method

.method public final e()V
    .locals 2

    .prologue
    .line 153
    const-string/jumbo v0, "ended"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zq;->b(Ljava/lang/String;[Ljava/lang/String;)V

    .line 154
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zq;->q()V

    .line 155
    return-void
.end method

.method public final e(I)V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zq;->f:Lcom/google/android/gms/internal/ads/zo;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zo;->f(I)V

    .line 103
    return-void
.end method

.method public final f()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 158
    .line 159
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zq;->q:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zq;->o:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zq;->p()Z

    move-result v0

    if-nez v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zq;->p:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zq;->o:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 161
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zq;->p:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    .line 162
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zq;->b:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zq;->p:Landroid/widget/ImageView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 163
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zq;->b:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zq;->p:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->bringChildToFront(Landroid/view/View;)V

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zq;->d:Lcom/google/android/gms/internal/ads/aaf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/aaf;->a()V

    .line 165
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zq;->k:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zq;->l:J

    .line 166
    sget-object v0, Lcom/google/android/gms/internal/ads/ve;->a:Lcom/google/android/gms/internal/ads/cnz;

    new-instance v1, Lcom/google/android/gms/internal/ads/zu;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zu;-><init>(Lcom/google/android/gms/internal/ads/zq;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/cnz;->post(Ljava/lang/Runnable;)Z

    .line 167
    return-void
.end method

.method public final f(I)V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zq;->f:Lcom/google/android/gms/internal/ads/zo;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zo;->g(I)V

    .line 105
    return-void
.end method

.method public final finalize()V
    .locals 2

    .prologue
    .line 173
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zq;->d:Lcom/google/android/gms/internal/ads/aaf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/aaf;->a()V

    .line 174
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zq;->f:Lcom/google/android/gms/internal/ads/zo;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zq;->f:Lcom/google/android/gms/internal/ads/zo;

    .line 176
    sget-object v1, Lcom/google/android/gms/internal/ads/yg;->e:Lcom/google/android/gms/internal/ads/crs;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zp;->a(Lcom/google/android/gms/internal/ads/zo;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/crs;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 178
    return-void

    .line 179
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 180
    throw v0
.end method

.method public final g()V
    .locals 4

    .prologue
    .line 189
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zq;->g:Z

    if-eqz v0, :cond_0

    .line 191
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zq;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zq;->b:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zq;->p:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zq;->o:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 195
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->j()Lcom/google/android/gms/common/util/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->b()J

    move-result-wide v0

    .line 196
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zq;->f:Lcom/google/android/gms/internal/ads/zo;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zq;->o:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zo;->getBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 197
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zq;->q:Z

    .line 198
    :cond_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->j()Lcom/google/android/gms/common/util/e;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/e;->b()J

    move-result-wide v2

    sub-long v0, v2, v0

    .line 199
    invoke-static {}, Lcom/google/android/gms/internal/ads/uu;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 200
    const/16 v2, 0x2e

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v2, "Spinner frame grab took "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/uu;->a(Ljava/lang/String;)V

    .line 201
    :cond_2
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zq;->e:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_3

    .line 202
    const-string/jumbo v2, "Spinner frame grab crossed jank threshold! Suspending spinner."

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/uu;->e(Ljava/lang/String;)V

    .line 203
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zq;->j:Z

    .line 204
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zq;->o:Landroid/graphics/Bitmap;

    .line 205
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zq;->c:Lcom/google/android/gms/internal/ads/o;

    if-eqz v2, :cond_3

    .line 206
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zq;->c:Lcom/google/android/gms/internal/ads/o;

    const-string/jumbo v3, "spinner_jank"

    .line 207
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 208
    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/internal/ads/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    :cond_3
    return-void
.end method

.method public final h()V
    .locals 3

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zq;->f:Lcom/google/android/gms/internal/ads/zo;

    if-nez v0, :cond_0

    .line 65
    :goto_0
    return-void

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zq;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 63
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zq;->f:Lcom/google/android/gms/internal/ads/zo;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zq;->m:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zq;->n:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zo;->a(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 64
    :cond_1
    const-string/jumbo v0, "no_src"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zq;->b(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final i()V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zq;->f:Lcom/google/android/gms/internal/ads/zo;

    if-nez v0, :cond_0

    .line 69
    :goto_0
    return-void

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zq;->f:Lcom/google/android/gms/internal/ads/zo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zo;->d()V

    goto :goto_0
.end method

.method public final j()V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zq;->f:Lcom/google/android/gms/internal/ads/zo;

    if-nez v0, :cond_0

    .line 73
    :goto_0
    return-void

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zq;->f:Lcom/google/android/gms/internal/ads/zo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zo;->c()V

    goto :goto_0
.end method

.method public final k()V
    .locals 3

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zq;->f:Lcom/google/android/gms/internal/ads/zo;

    if-nez v0, :cond_0

    .line 83
    :goto_0
    return-void

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zq;->f:Lcom/google/android/gms/internal/ads/zo;

    .line 81
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zo;->b:Lcom/google/android/gms/internal/ads/aaj;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/aaj;->a(Z)V

    .line 82
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zo;->e()V

    goto :goto_0
.end method

.method public final l()V
    .locals 3

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zq;->f:Lcom/google/android/gms/internal/ads/zo;

    if-nez v0, :cond_0

    .line 89
    :goto_0
    return-void

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zq;->f:Lcom/google/android/gms/internal/ads/zo;

    .line 87
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zo;->b:Lcom/google/android/gms/internal/ads/aaj;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/aaj;->a(Z)V

    .line 88
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zo;->e()V

    goto :goto_0
.end method

.method public final m()V
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    const/4 v4, -0x2

    .line 110
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zq;->f:Lcom/google/android/gms/internal/ads/zo;

    if-nez v0, :cond_0

    .line 119
    :goto_0
    return-void

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zq;->f:Lcom/google/android/gms/internal/ads/zo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zo;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 113
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 114
    const-string/jumbo v2, "AdMob - "

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zq;->f:Lcom/google/android/gms/internal/ads/zo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zo;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    const/high16 v0, -0x10000

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 116
    const/16 v0, -0x100

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 117
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zq;->b:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x11

    invoke-direct {v2, v4, v4, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 118
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zq;->b:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->bringChildToFront(Landroid/view/View;)V

    goto :goto_0

    .line 114
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final n()V
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zq;->d:Lcom/google/android/gms/internal/ads/aaf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/aaf;->a()V

    .line 169
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zq;->f:Lcom/google/android/gms/internal/ads/zo;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zq;->f:Lcom/google/android/gms/internal/ads/zo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zo;->b()V

    .line 171
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zq;->q()V

    .line 172
    return-void
.end method

.method final o()V
    .locals 7

    .prologue
    .line 181
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zq;->f:Lcom/google/android/gms/internal/ads/zo;

    if-nez v0, :cond_1

    .line 188
    :cond_0
    :goto_0
    return-void

    .line 183
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zq;->f:Lcom/google/android/gms/internal/ads/zo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zo;->getCurrentPosition()I

    move-result v0

    int-to-long v0, v0

    .line 184
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zq;->k:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 185
    long-to-float v2, v0

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v2, v3

    .line 186
    const-string/jumbo v3, "timeupdate"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "time"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v5

    invoke-direct {p0, v3, v4}, Lcom/google/android/gms/internal/ads/zq;->b(Ljava/lang/String;[Ljava/lang/String;)V

    .line 187
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zq;->k:J

    goto :goto_0
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 2

    .prologue
    .line 222
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    .line 223
    if-eqz p1, :cond_0

    .line 224
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zq;->d:Lcom/google/android/gms/internal/ads/aaf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/aaf;->b()V

    .line 227
    :goto_0
    sget-object v0, Lcom/google/android/gms/internal/ads/ve;->a:Lcom/google/android/gms/internal/ads/cnz;

    new-instance v1, Lcom/google/android/gms/internal/ads/zs;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zs;-><init>(Lcom/google/android/gms/internal/ads/zq;Z)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/cnz;->post(Ljava/lang/Runnable;)Z

    .line 228
    return-void

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zq;->d:Lcom/google/android/gms/internal/ads/aaf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/aaf;->a()V

    .line 226
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zq;->k:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zq;->l:J

    goto :goto_0
.end method

.method public final onWindowVisibilityChanged(I)V
    .locals 3

    .prologue
    .line 229
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowVisibilityChanged(I)V

    .line 230
    if-nez p1, :cond_0

    .line 231
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zq;->d:Lcom/google/android/gms/internal/ads/aaf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/aaf;->b()V

    .line 232
    const/4 v0, 0x1

    .line 236
    :goto_0
    sget-object v1, Lcom/google/android/gms/internal/ads/ve;->a:Lcom/google/android/gms/internal/ads/cnz;

    new-instance v2, Lcom/google/android/gms/internal/ads/zt;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/ads/zt;-><init>(Lcom/google/android/gms/internal/ads/zq;Z)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/cnz;->post(Ljava/lang/Runnable;)Z

    .line 237
    return-void

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zq;->d:Lcom/google/android/gms/internal/ads/aaf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/aaf;->a()V

    .line 234
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zq;->k:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zq;->l:J

    .line 235
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final setVolume(F)V
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zq;->f:Lcom/google/android/gms/internal/ads/zo;

    if-nez v0, :cond_0

    .line 95
    :goto_0
    return-void

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zq;->f:Lcom/google/android/gms/internal/ads/zo;

    .line 93
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zo;->b:Lcom/google/android/gms/internal/ads/aaj;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/aaj;->a(F)V

    .line 94
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zo;->e()V

    goto :goto_0
.end method
