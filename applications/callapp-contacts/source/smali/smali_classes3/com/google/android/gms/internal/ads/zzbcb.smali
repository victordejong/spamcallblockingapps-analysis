.class public final Lcom/google/android/gms/internal/ads/zzbcb;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/aak;


# instance fields
.field final a:Lcom/google/android/gms/internal/ads/abd;

.field b:Lcom/google/android/gms/internal/ads/zzbbz;

.field c:Ljava/lang/String;

.field d:[Ljava/lang/String;

.field private final e:Lcom/google/android/gms/internal/ads/abb;

.field private final f:Landroid/widget/FrameLayout;

.field private final g:Lcom/google/android/gms/internal/ads/bi;

.field private final h:J

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:J

.field private n:J

.field private o:Landroid/graphics/Bitmap;

.field private p:Landroid/widget/ImageView;

.field private q:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/abb;IZLcom/google/android/gms/internal/ads/bi;Lcom/google/android/gms/internal/ads/aay;)V
    .locals 12

    move-object v0, p0

    move-object v8, p1

    move-object/from16 v9, p5

    .line 15
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    move-object v3, p2

    .line 16
    iput-object v3, v0, Lcom/google/android/gms/internal/ads/zzbcb;->e:Lcom/google/android/gms/internal/ads/abb;

    .line 17
    iput-object v9, v0, Lcom/google/android/gms/internal/ads/zzbcb;->g:Lcom/google/android/gms/internal/ads/bi;

    .line 18
    new-instance v10, Landroid/widget/FrameLayout;

    invoke-direct {v10, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v10, v0, Lcom/google/android/gms/internal/ads/zzbcb;->f:Landroid/widget/FrameLayout;

    .line 19
    sget-object v1, Lcom/google/android/gms/internal/ads/aq;->E:Lcom/google/android/gms/internal/ads/af;

    .line 20
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v1

    .line 21
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x106000c

    .line 22
    invoke-virtual {v10, v1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 23
    :cond_0
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v11, -0x1

    invoke-direct {v1, v11, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v10, v1}, Lcom/google/android/gms/internal/ads/zzbcb;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 24
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/abb;->e()Lcom/google/android/gms/ads/internal/zzb;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/abb;->e()Lcom/google/android/gms/ads/internal/zzb;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzb;->zzbov:Lcom/google/android/gms/internal/ads/aal;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    .line 27
    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/aal;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/abb;IZLcom/google/android/gms/internal/ads/bi;Lcom/google/android/gms/internal/ads/aay;)Lcom/google/android/gms/internal/ads/zzbbz;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzbcb;->b:Lcom/google/android/gms/internal/ads/zzbbz;

    if-eqz v1, :cond_1

    .line 29
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x11

    invoke-direct {v2, v11, v11, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v10, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 30
    sget-object v1, Lcom/google/android/gms/internal/ads/aq;->v:Lcom/google/android/gms/internal/ads/af;

    .line 31
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v1

    .line 32
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 33
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbcb;->l()V

    .line 34
    :cond_1
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzbcb;->p:Landroid/widget/ImageView;

    .line 35
    sget-object v1, Lcom/google/android/gms/internal/ads/aq;->z:Lcom/google/android/gms/internal/ads/af;

    .line 36
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v1

    .line 37
    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzbcb;->h:J

    .line 38
    sget-object v1, Lcom/google/android/gms/internal/ads/aq;->x:Lcom/google/android/gms/internal/ads/af;

    .line 39
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v1

    .line 40
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzbcb;->l:Z

    if-eqz v9, :cond_3

    if-eqz v1, :cond_2

    const-string v1, "1"

    goto :goto_0

    :cond_2
    const-string v1, "0"

    :goto_0
    const-string v2, "spinner_used"

    .line 44
    invoke-virtual {v9, v2, v1}, Lcom/google/android/gms/internal/ads/bi;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    :cond_3
    new-instance v1, Lcom/google/android/gms/internal/ads/abd;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/abd;-><init>(Lcom/google/android/gms/internal/ads/zzbcb;)V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzbcb;->a:Lcom/google/android/gms/internal/ads/abd;

    .line 46
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzbcb;->b:Lcom/google/android/gms/internal/ads/zzbbz;

    if-eqz v1, :cond_4

    .line 47
    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/ads/zzbbz;->a(Lcom/google/android/gms/internal/ads/aak;)V

    .line 48
    :cond_4
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzbcb;->b:Lcom/google/android/gms/internal/ads/zzbbz;

    if-nez v1, :cond_5

    const-string v1, "AdVideoUnderlay Error"

    const-string v2, "Allocating player failed."

    .line 49
    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbcb;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/ads/abb;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "event"

    const-string v2, "no_video_view"

    .line 2
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "onVideoEvent"

    .line 3
    invoke-interface {p0, v1, v0}, Lcom/google/android/gms/internal/ads/abb;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/ads/abb;Ljava/lang/String;)V
    .locals 3

    .line 10
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "event"

    const-string v2, "decoderProps"

    .line 11
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "error"

    .line 12
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "onVideoEvent"

    .line 13
    invoke-interface {p0, p1, v0}, Lcom/google/android/gms/internal/ads/abb;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/ads/abb;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/abb;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;>;)V"
        }
    .end annotation

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "event"

    const-string v2, "decoderProps"

    .line 6
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "mimeTypes"

    .line 7
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "onVideoEvent"

    .line 8
    invoke-interface {p0, p1, v0}, Lcom/google/android/gms/internal/ads/abb;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/zzbcb;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 279
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbcb;->a(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method private final o()Z
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcb;->p:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 124
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcb;->a:Lcom/google/android/gms/internal/ads/abd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/abd;->b()V

    .line 125
    sget-object v0, Lcom/google/android/gms/ads/internal/util/zzj;->zzegq:Lcom/google/android/gms/internal/ads/cxg;

    new-instance v1, Lcom/google/android/gms/internal/ads/aap;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/aap;-><init>(Lcom/google/android/gms/internal/ads/zzbcb;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/cxg;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(II)V
    .locals 3

    .line 228
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbcb;->l:Z

    if-eqz v0, :cond_1

    .line 229
    sget-object v0, Lcom/google/android/gms/internal/ads/aq;->y:Lcom/google/android/gms/internal/ads/af;

    .line 230
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v0

    .line 231
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    div-int/2addr p1, v0

    const/4 v0, 0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 232
    sget-object v1, Lcom/google/android/gms/internal/ads/aq;->y:Lcom/google/android/gms/internal/ads/af;

    .line 233
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v1

    .line 234
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    div-int/2addr p2, v1

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 235
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcb;->o:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcb;->o:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-eq v0, p2, :cond_1

    .line 236
    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbcb;->o:Landroid/graphics/Bitmap;

    const/4 p1, 0x0

    .line 237
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzbcb;->q:Z

    :cond_1
    return-void
.end method

.method public final a(IIII)V
    .locals 1

    if-eqz p3, :cond_1

    if-nez p4, :cond_0

    goto :goto_0

    .line 53
    :cond_0
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, p3, p4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/4 p3, 0x0

    .line 54
    invoke-virtual {v0, p1, p2, p3, p3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 55
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbcb;->f:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 56
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbcb;->requestLayout()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "what"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 p1, 0x2

    const-string v1, "extra"

    aput-object v1, v0, p1

    const/4 p1, 0x3

    aput-object p2, v0, p1

    const-string p1, "error"

    .line 160
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzbcb;->a(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method final varargs a(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 5

    .line 256
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "event"

    .line 257
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    array-length p1, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v1

    :goto_0
    if-ge v2, p1, :cond_1

    aget-object v4, p2, v2

    if-nez v3, :cond_0

    move-object v3, v4

    goto :goto_1

    .line 262
    :cond_0
    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v3, v1

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 265
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbcb;->e:Lcom/google/android/gms/internal/ads/abb;

    const-string p2, "onVideoEvent"

    invoke-interface {p1, p2, v0}, Lcom/google/android/gms/internal/ads/abb;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final b()V
    .locals 6

    .line 127
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcb;->b:Lcom/google/android/gms/internal/ads/zzbbz;

    if-nez v0, :cond_0

    return-void

    .line 129
    :cond_0
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzbcb;->n:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    .line 130
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbbz;->e()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    .line 131
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbcb;->b:Lcom/google/android/gms/internal/ads/zzbbz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbbz;->g()I

    move-result v1

    .line 132
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbcb;->b:Lcom/google/android/gms/internal/ads/zzbbz;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzbbz;->h()I

    move-result v2

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "duration"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 134
    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x2

    const-string/jumbo v4, "videoWidth"

    aput-object v4, v3, v0

    const/4 v0, 0x3

    .line 135
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v0

    const/4 v0, 0x4

    const-string/jumbo v1, "videoHeight"

    aput-object v1, v3, v0

    const/4 v0, 0x5

    .line 136
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v0

    const-string v0, "canplaythrough"

    .line 137
    invoke-virtual {p0, v0, v3}, Lcom/google/android/gms/internal/ads/zzbcb;->a(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "what"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 p1, 0x2

    const-string v1, "extra"

    aput-object v1, v0, p1

    const/4 p1, 0x3

    aput-object p2, v0, p1

    const-string p1, "exception"

    .line 162
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzbcb;->a(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public final c()V
    .locals 3

    .line 140
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcb;->e:Lcom/google/android/gms/internal/ads/abb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/abb;->d()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 141
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbcb;->j:Z

    if-nez v0, :cond_1

    .line 142
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcb;->e:Lcom/google/android/gms/internal/ads/abb;

    .line 143
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/abb;->d()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 144
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 v2, 0x80

    and-int/2addr v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbcb;->k:Z

    if-nez v0, :cond_1

    .line 146
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcb;->e:Lcom/google/android/gms/internal/ads/abb;

    .line 147
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/abb;->d()Landroid/app/Activity;

    move-result-object v0

    .line 148
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 149
    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    .line 150
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbcb;->j:Z

    .line 151
    :cond_1
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbcb;->i:Z

    return-void
.end method

.method public final d()V
    .locals 3

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "pause"

    .line 153
    invoke-virtual {p0, v2, v1}, Lcom/google/android/gms/internal/ads/zzbcb;->a(Ljava/lang/String;[Ljava/lang/String;)V

    .line 154
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbcb;->n()V

    .line 155
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbcb;->i:Z

    return-void
.end method

.method public final e()V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "ended"

    .line 157
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ads/zzbcb;->a(Ljava/lang/String;[Ljava/lang/String;)V

    .line 158
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbcb;->n()V

    return-void
.end method

.method public final f()V
    .locals 4

    .line 165
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbcb;->q:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcb;->o:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbcb;->o()Z

    move-result v0

    if-nez v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcb;->p:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbcb;->o:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 167
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcb;->p:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    .line 168
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcb;->f:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbcb;->p:Landroid/widget/ImageView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 169
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcb;->f:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbcb;->p:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->bringChildToFront(Landroid/view/View;)V

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcb;->a:Lcom/google/android/gms/internal/ads/abd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/abd;->a()V

    .line 171
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzbcb;->m:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzbcb;->n:J

    .line 172
    sget-object v0, Lcom/google/android/gms/ads/internal/util/zzj;->zzegq:Lcom/google/android/gms/internal/ads/cxg;

    new-instance v1, Lcom/google/android/gms/internal/ads/aao;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/aao;-><init>(Lcom/google/android/gms/internal/ads/zzbcb;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/cxg;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 179
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcb;->a:Lcom/google/android/gms/internal/ads/abd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/abd;->a()V

    .line 180
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcb;->b:Lcom/google/android/gms/internal/ads/zzbbz;

    if-eqz v0, :cond_0

    .line 182
    sget-object v1, Lcom/google/android/gms/internal/ads/zd;->e:Lcom/google/android/gms/internal/ads/dbs;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/aan;->a(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/dbs;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    .line 185
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 186
    throw v0
.end method

.method public final g()V
    .locals 5

    .line 206
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbcb;->i:Z

    if-eqz v0, :cond_0

    .line 208
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbcb;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcb;->f:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbcb;->p:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcb;->o:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 212
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlc()Lcom/google/android/gms/common/util/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/f;->b()J

    move-result-wide v0

    .line 213
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbcb;->b:Lcom/google/android/gms/internal/ads/zzbbz;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbcb;->o:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzbbz;->getBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    .line 214
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzbcb;->q:Z

    .line 215
    :cond_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlc()Lcom/google/android/gms/common/util/f;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/f;->b()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 216
    invoke-static {}, Lcom/google/android/gms/ads/internal/util/zzd;->zzyz()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x2e

    .line 217
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Spinner frame grab took "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzed(Ljava/lang/String;)V

    .line 218
    :cond_2
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzbcb;->h:J

    cmp-long v4, v2, v0

    if-lez v4, :cond_3

    const-string v0, "Spinner frame grab crossed jank threshold! Suspending spinner."

    .line 219
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzez(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 220
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbcb;->l:Z

    const/4 v0, 0x0

    .line 221
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcb;->o:Landroid/graphics/Bitmap;

    .line 222
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcb;->g:Lcom/google/android/gms/internal/ads/bi;

    if-eqz v0, :cond_3

    .line 224
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "spinner_jank"

    .line 225
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/ads/bi;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public final h()V
    .locals 3

    .line 64
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcb;->b:Lcom/google/android/gms/internal/ads/zzbbz;

    if-nez v0, :cond_0

    return-void

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcb;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 67
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcb;->b:Lcom/google/android/gms/internal/ads/zzbbz;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbcb;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbcb;->d:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbbz;->a(Ljava/lang/String;[Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "no_src"

    .line 68
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ads/zzbcb;->a(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public final i()V
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcb;->b:Lcom/google/android/gms/internal/ads/zzbbz;

    if-nez v0, :cond_0

    return-void

    .line 72
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbbz;->d()V

    return-void
.end method

.method public final j()V
    .locals 3

    .line 82
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcb;->b:Lcom/google/android/gms/internal/ads/zzbbz;

    if-nez v0, :cond_0

    return-void

    .line 85
    :cond_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzbbz;->c:Lcom/google/android/gms/internal/ads/abc;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/abc;->a(Z)V

    .line 86
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbbz;->m()V

    return-void
.end method

.method public final k()V
    .locals 3

    .line 88
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcb;->b:Lcom/google/android/gms/internal/ads/zzbbz;

    if-nez v0, :cond_0

    return-void

    .line 91
    :cond_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzbbz;->c:Lcom/google/android/gms/internal/ads/abc;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/abc;->a(Z)V

    .line 92
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbbz;->m()V

    return-void
.end method

.method public final l()V
    .locals 5

    .line 114
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcb;->b:Lcom/google/android/gms/internal/ads/zzbbz;

    if-nez v0, :cond_0

    return-void

    .line 116
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbbz;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 117
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v0, "AdMob - "

    .line 118
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbcb;->b:Lcom/google/android/gms/internal/ads/zzbbz;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzbbz;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v0, -0x10000

    .line 119
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v0, -0x100

    .line 120
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 121
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcb;->f:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x11

    const/4 v4, -0x2

    invoke-direct {v2, v4, v4, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 122
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcb;->f:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->bringChildToFront(Landroid/view/View;)V

    return-void
.end method

.method final m()V
    .locals 9

    .line 187
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcb;->b:Lcom/google/android/gms/internal/ads/zzbbz;

    if-nez v0, :cond_0

    return-void

    .line 189
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbbz;->f()I

    move-result v0

    int-to-long v0, v0

    .line 190
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzbcb;->m:J

    cmp-long v4, v2, v0

    if-eqz v4, :cond_2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    long-to-float v2, v0

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v2, v3

    .line 192
    sget-object v3, Lcom/google/android/gms/internal/ads/aq;->bl:Lcom/google/android/gms/internal/ads/af;

    .line 193
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v3

    .line 194
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const/4 v4, 0x1

    const-string v5, "time"

    const/4 v6, 0x0

    const/4 v7, 0x2

    const-string v8, "timeupdate"

    if-eqz v3, :cond_1

    const/16 v3, 0xc

    new-array v3, v3, [Ljava/lang/String;

    aput-object v5, v3, v6

    .line 196
    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v4

    const-string v2, "totalBytes"

    aput-object v2, v3, v7

    const/4 v2, 0x3

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzbcb;->b:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 197
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzbbz;->k()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    const/4 v2, 0x4

    const-string v4, "qoeCachedBytes"

    aput-object v4, v3, v2

    const/4 v2, 0x5

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzbcb;->b:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 198
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzbbz;->j()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    const/4 v2, 0x6

    const-string v4, "qoeLoadedBytes"

    aput-object v4, v3, v2

    const/4 v2, 0x7

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzbcb;->b:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 199
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzbbz;->i()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    const/16 v2, 0x8

    const-string v4, "droppedFrames"

    aput-object v4, v3, v2

    const/16 v2, 0x9

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzbcb;->b:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 200
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzbbz;->l()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    const/16 v2, 0xa

    const-string v4, "reportTime"

    aput-object v4, v3, v2

    const/16 v2, 0xb

    .line 201
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlc()Lcom/google/android/gms/common/util/f;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/gms/common/util/f;->a()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    .line 202
    invoke-virtual {p0, v8, v3}, Lcom/google/android/gms/internal/ads/zzbcb;->a(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-array v3, v7, [Ljava/lang/String;

    aput-object v5, v3, v6

    .line 203
    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v4

    invoke-virtual {p0, v8, v3}, Lcom/google/android/gms/internal/ads/zzbcb;->a(Ljava/lang/String;[Ljava/lang/String;)V

    .line 204
    :goto_0
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzbcb;->m:J

    :cond_2
    return-void
.end method

.method final n()V
    .locals 2

    .line 267
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcb;->e:Lcom/google/android/gms/internal/ads/abb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/abb;->d()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 269
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbcb;->j:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbcb;->k:Z

    if-nez v0, :cond_1

    .line 270
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcb;->e:Lcom/google/android/gms/internal/ads/abb;

    .line 271
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/abb;->d()Landroid/app/Activity;

    move-result-object v0

    .line 272
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    .line 273
    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    const/4 v0, 0x0

    .line 274
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbcb;->j:Z

    :cond_1
    return-void
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 2

    .line 239
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_0

    .line 241
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcb;->a:Lcom/google/android/gms/internal/ads/abd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/abd;->b()V

    goto :goto_0

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcb;->a:Lcom/google/android/gms/internal/ads/abd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/abd;->a()V

    .line 243
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzbcb;->m:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzbcb;->n:J

    .line 244
    :goto_0
    sget-object v0, Lcom/google/android/gms/ads/internal/util/zzj;->zzegq:Lcom/google/android/gms/internal/ads/cxg;

    new-instance v1, Lcom/google/android/gms/internal/ads/aam;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/aam;-><init>(Lcom/google/android/gms/internal/ads/zzbcb;Z)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/cxg;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onWindowVisibilityChanged(I)V
    .locals 2

    .line 246
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowVisibilityChanged(I)V

    if-nez p1, :cond_0

    .line 248
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbcb;->a:Lcom/google/android/gms/internal/ads/abd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/abd;->b()V

    const/4 p1, 0x1

    goto :goto_0

    .line 250
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbcb;->a:Lcom/google/android/gms/internal/ads/abd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/abd;->a()V

    .line 251
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzbcb;->m:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzbcb;->n:J

    const/4 p1, 0x0

    .line 253
    :goto_0
    sget-object v0, Lcom/google/android/gms/ads/internal/util/zzj;->zzegq:Lcom/google/android/gms/internal/ads/cxg;

    new-instance v1, Lcom/google/android/gms/internal/ads/aar;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/aar;-><init>(Lcom/google/android/gms/internal/ads/zzbcb;Z)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/cxg;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final setVolume(F)V
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcb;->b:Lcom/google/android/gms/internal/ads/zzbbz;

    if-nez v0, :cond_0

    return-void

    .line 97
    :cond_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzbbz;->c:Lcom/google/android/gms/internal/ads/abc;

    .line 1009
    iput p1, v1, Lcom/google/android/gms/internal/ads/abc;->a:F

    .line 1010
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/abc;->d()V

    .line 98
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbbz;->m()V

    return-void
.end method
