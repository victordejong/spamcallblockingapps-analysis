.class public final Lcom/google/android/gms/internal/ads/ni;
.super Lcom/google/android/gms/internal/ads/nt;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# static fields
.field private static final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:Ljava/lang/String;

.field private c:Z

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private final j:Ljava/lang/Object;

.field private final k:Lcom/google/android/gms/internal/ads/act;

.field private final l:Landroid/app/Activity;

.field private m:Lcom/google/android/gms/internal/ads/aei;

.field private n:Landroid/widget/ImageView;

.field private o:Landroid/widget/LinearLayout;

.field private p:Lcom/google/android/gms/internal/ads/ns;

.field private q:Landroid/widget/PopupWindow;

.field private r:Landroid/widget/RelativeLayout;

.field private s:Landroid/view/ViewGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 218
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "top-left"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "top-right"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "top-center"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "center"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "bottom-left"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "bottom-right"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "bottom-center"

    aput-object v2, v0, v1

    .line 219
    invoke-static {v0}, Lcom/google/android/gms/common/util/f;->b([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/ni;->a:Ljava/util/Set;

    .line 220
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/act;Lcom/google/android/gms/internal/ads/ns;)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 1
    const-string/jumbo v0, "resize"

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/nt;-><init>(Lcom/google/android/gms/internal/ads/act;Ljava/lang/String;)V

    .line 2
    const-string/jumbo v0, "top-right"

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ni;->b:Ljava/lang/String;

    .line 3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/ni;->c:Z

    .line 4
    iput v1, p0, Lcom/google/android/gms/internal/ads/ni;->d:I

    .line 5
    iput v1, p0, Lcom/google/android/gms/internal/ads/ni;->e:I

    .line 6
    iput v2, p0, Lcom/google/android/gms/internal/ads/ni;->f:I

    .line 7
    iput v1, p0, Lcom/google/android/gms/internal/ads/ni;->g:I

    .line 8
    iput v1, p0, Lcom/google/android/gms/internal/ads/ni;->h:I

    .line 9
    iput v2, p0, Lcom/google/android/gms/internal/ads/ni;->i:I

    .line 10
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ni;->j:Ljava/lang/Object;

    .line 11
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ni;->k:Lcom/google/android/gms/internal/ads/act;

    .line 12
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/act;->f()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ni;->l:Landroid/app/Activity;

    .line 13
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ni;->p:Lcom/google/android/gms/internal/ads/ns;

    .line 14
    return-void
.end method


# virtual methods
.method public final a(II)V
    .locals 0

    .prologue
    .line 215
    iput p1, p0, Lcom/google/android/gms/internal/ads/ni;->d:I

    .line 216
    iput p2, p0, Lcom/google/android/gms/internal/ads/ni;->e:I

    .line 217
    return-void
.end method

.method public final a(IIZ)V
    .locals 2

    .prologue
    .line 207
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ni;->j:Ljava/lang/Object;

    monitor-enter v1

    .line 208
    :try_start_0
    iput p1, p0, Lcom/google/android/gms/internal/ads/ni;->d:I

    .line 209
    iput p2, p0, Lcom/google/android/gms/internal/ads/ni;->e:I

    .line 210
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ni;->q:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 211
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Ljava/util/Map;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/16 v11, 0x32

    const/4 v6, 0x2

    const/4 v4, -0x1

    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 15
    iget-object v8, p0, Lcom/google/android/gms/internal/ads/ni;->j:Ljava/lang/Object;

    monitor-enter v8

    .line 16
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ni;->l:Landroid/app/Activity;

    if-nez v1, :cond_0

    .line 17
    const-string/jumbo v1, "Not an activity context. Cannot resize."

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/nt;->a(Ljava/lang/String;)V

    .line 18
    monitor-exit v8

    .line 189
    :goto_0
    return-void

    .line 19
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ni;->k:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/act;->t()Lcom/google/android/gms/internal/ads/aei;

    move-result-object v1

    if-nez v1, :cond_1

    .line 20
    const-string/jumbo v1, "Webview is not yet available, size is not set."

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/nt;->a(Ljava/lang/String;)V

    .line 21
    monitor-exit v8

    goto :goto_0

    .line 189
    :catchall_0
    move-exception v1

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 22
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ni;->k:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/act;->t()Lcom/google/android/gms/internal/ads/aei;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/aei;->e()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 23
    const-string/jumbo v1, "Is interstitial. Cannot resize an interstitial."

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/nt;->a(Ljava/lang/String;)V

    .line 24
    monitor-exit v8

    goto :goto_0

    .line 25
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ni;->k:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/act;->A()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 26
    const-string/jumbo v1, "Cannot resize an expanded banner."

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/nt;->a(Ljava/lang/String;)V

    .line 27
    monitor-exit v8

    goto :goto_0

    .line 29
    :cond_3
    const-string/jumbo v1, "width"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 30
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->c()Lcom/google/android/gms/internal/ads/ve;

    const-string/jumbo v1, "width"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/ve;->a(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/internal/ads/ni;->i:I

    .line 31
    :cond_4
    const-string/jumbo v1, "height"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 32
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->c()Lcom/google/android/gms/internal/ads/ve;

    const-string/jumbo v1, "height"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/ve;->a(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/internal/ads/ni;->f:I

    .line 33
    :cond_5
    const-string/jumbo v1, "offsetX"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 34
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->c()Lcom/google/android/gms/internal/ads/ve;

    const-string/jumbo v1, "offsetX"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/ve;->a(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/internal/ads/ni;->g:I

    .line 35
    :cond_6
    const-string/jumbo v1, "offsetY"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 36
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->c()Lcom/google/android/gms/internal/ads/ve;

    const-string/jumbo v1, "offsetY"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/ve;->a(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/internal/ads/ni;->h:I

    .line 37
    :cond_7
    const-string/jumbo v1, "allowOffscreen"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 38
    const-string/jumbo v1, "allowOffscreen"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/ni;->c:Z

    .line 39
    :cond_8
    const-string/jumbo v1, "customClosePosition"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 40
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 41
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/ni;->b:Ljava/lang/String;

    .line 43
    :cond_9
    iget v1, p0, Lcom/google/android/gms/internal/ads/ni;->i:I

    if-ltz v1, :cond_a

    iget v1, p0, Lcom/google/android/gms/internal/ads/ni;->f:I

    if-ltz v1, :cond_a

    move v1, v5

    .line 44
    :goto_1
    if-nez v1, :cond_b

    .line 45
    const-string/jumbo v1, "Invalid width and height options. Cannot resize."

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/nt;->a(Ljava/lang/String;)V

    .line 46
    monitor-exit v8

    goto/16 :goto_0

    :cond_a
    move v1, v3

    .line 43
    goto :goto_1

    .line 47
    :cond_b
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ni;->l:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v9

    .line 48
    if-eqz v9, :cond_c

    invoke-virtual {v9}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_d

    .line 49
    :cond_c
    const-string/jumbo v1, "Activity context is not ready, cannot get window or decor view."

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/nt;->a(Ljava/lang/String;)V

    .line 50
    monitor-exit v8

    goto/16 :goto_0

    .line 53
    :cond_d
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->c()Lcom/google/android/gms/internal/ads/ve;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ni;->l:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/ve;->b(Landroid/app/Activity;)[I

    move-result-object v1

    .line 54
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->c()Lcom/google/android/gms/internal/ads/ve;

    move-result-object v2

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/ni;->l:Landroid/app/Activity;

    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/ads/ve;->c(Landroid/app/Activity;)[I

    move-result-object v7

    .line 55
    const/4 v2, 0x0

    aget v10, v1, v2

    .line 56
    const/4 v2, 0x1

    aget v1, v1, v2

    .line 57
    iget v2, p0, Lcom/google/android/gms/internal/ads/ni;->i:I

    if-lt v2, v11, :cond_e

    iget v2, p0, Lcom/google/android/gms/internal/ads/ni;->i:I

    if-le v2, v10, :cond_f

    .line 58
    :cond_e
    const-string/jumbo v1, "Width is too small or too large."

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/uu;->e(Ljava/lang/String;)V

    move v1, v3

    .line 92
    :goto_2
    if-nez v1, :cond_16

    .line 93
    const/4 v1, 0x0

    move-object v7, v1

    .line 111
    :goto_3
    if-nez v7, :cond_1a

    .line 112
    const-string/jumbo v1, "Resize location out of screen or close button is not visible."

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/nt;->a(Ljava/lang/String;)V

    .line 113
    monitor-exit v8

    goto/16 :goto_0

    .line 60
    :cond_f
    iget v2, p0, Lcom/google/android/gms/internal/ads/ni;->f:I

    if-lt v2, v11, :cond_10

    iget v2, p0, Lcom/google/android/gms/internal/ads/ni;->f:I

    if-le v2, v1, :cond_11

    .line 61
    :cond_10
    const-string/jumbo v1, "Height is too small or too large."

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/uu;->e(Ljava/lang/String;)V

    move v1, v3

    .line 62
    goto :goto_2

    .line 63
    :cond_11
    iget v2, p0, Lcom/google/android/gms/internal/ads/ni;->f:I

    if-ne v2, v1, :cond_12

    iget v1, p0, Lcom/google/android/gms/internal/ads/ni;->i:I

    if-ne v1, v10, :cond_12

    .line 64
    const-string/jumbo v1, "Cannot resize to a full-screen ad."

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/uu;->e(Ljava/lang/String;)V

    move v1, v3

    .line 65
    goto :goto_2

    .line 66
    :cond_12
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/ni;->c:Z

    if-eqz v1, :cond_15

    .line 68
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ni;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_13
    move v1, v4

    :goto_4
    packed-switch v1, :pswitch_data_0

    .line 87
    iget v1, p0, Lcom/google/android/gms/internal/ads/ni;->d:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/ni;->g:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/google/android/gms/internal/ads/ni;->i:I

    add-int/2addr v1, v2

    add-int/lit8 v2, v1, -0x32

    .line 88
    iget v1, p0, Lcom/google/android/gms/internal/ads/ni;->e:I

    iget v11, p0, Lcom/google/android/gms/internal/ads/ni;->h:I

    add-int/2addr v1, v11

    .line 89
    :goto_5
    if-ltz v2, :cond_14

    add-int/lit8 v2, v2, 0x32

    if-gt v2, v10, :cond_14

    const/4 v2, 0x0

    aget v2, v7, v2

    if-lt v1, v2, :cond_14

    add-int/lit8 v1, v1, 0x32

    const/4 v2, 0x1

    aget v2, v7, v2

    if-le v1, v2, :cond_15

    :cond_14
    move v1, v3

    .line 90
    goto :goto_2

    .line 68
    :sswitch_0
    const-string/jumbo v2, "top-left"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    move v1, v3

    goto :goto_4

    :sswitch_1
    const-string/jumbo v2, "top-center"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    move v1, v5

    goto :goto_4

    :sswitch_2
    const-string/jumbo v2, "center"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    move v1, v6

    goto :goto_4

    :sswitch_3
    const-string/jumbo v2, "bottom-left"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    const/4 v1, 0x3

    goto :goto_4

    :sswitch_4
    const-string/jumbo v2, "bottom-center"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    const/4 v1, 0x4

    goto :goto_4

    :sswitch_5
    const-string/jumbo v2, "bottom-right"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    const/4 v1, 0x5

    goto :goto_4

    .line 69
    :pswitch_0
    iget v1, p0, Lcom/google/android/gms/internal/ads/ni;->d:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/ni;->g:I

    add-int/2addr v2, v1

    .line 70
    iget v1, p0, Lcom/google/android/gms/internal/ads/ni;->e:I

    iget v11, p0, Lcom/google/android/gms/internal/ads/ni;->h:I

    add-int/2addr v1, v11

    .line 71
    goto :goto_5

    .line 72
    :pswitch_1
    iget v1, p0, Lcom/google/android/gms/internal/ads/ni;->d:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/ni;->g:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/google/android/gms/internal/ads/ni;->i:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int/lit8 v2, v1, -0x19

    .line 73
    iget v1, p0, Lcom/google/android/gms/internal/ads/ni;->e:I

    iget v11, p0, Lcom/google/android/gms/internal/ads/ni;->h:I

    add-int/2addr v1, v11

    .line 74
    goto :goto_5

    .line 75
    :pswitch_2
    iget v1, p0, Lcom/google/android/gms/internal/ads/ni;->d:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/ni;->g:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/google/android/gms/internal/ads/ni;->i:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int/lit8 v2, v1, -0x19

    .line 76
    iget v1, p0, Lcom/google/android/gms/internal/ads/ni;->e:I

    iget v11, p0, Lcom/google/android/gms/internal/ads/ni;->h:I

    add-int/2addr v1, v11

    iget v11, p0, Lcom/google/android/gms/internal/ads/ni;->f:I

    div-int/lit8 v11, v11, 0x2

    add-int/2addr v1, v11

    add-int/lit8 v1, v1, -0x19

    .line 77
    goto/16 :goto_5

    .line 78
    :pswitch_3
    iget v1, p0, Lcom/google/android/gms/internal/ads/ni;->d:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/ni;->g:I

    add-int/2addr v2, v1

    .line 79
    iget v1, p0, Lcom/google/android/gms/internal/ads/ni;->e:I

    iget v11, p0, Lcom/google/android/gms/internal/ads/ni;->h:I

    add-int/2addr v1, v11

    iget v11, p0, Lcom/google/android/gms/internal/ads/ni;->f:I

    add-int/2addr v1, v11

    add-int/lit8 v1, v1, -0x32

    .line 80
    goto/16 :goto_5

    .line 81
    :pswitch_4
    iget v1, p0, Lcom/google/android/gms/internal/ads/ni;->d:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/ni;->g:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/google/android/gms/internal/ads/ni;->i:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int/lit8 v2, v1, -0x19

    .line 82
    iget v1, p0, Lcom/google/android/gms/internal/ads/ni;->e:I

    iget v11, p0, Lcom/google/android/gms/internal/ads/ni;->h:I

    add-int/2addr v1, v11

    iget v11, p0, Lcom/google/android/gms/internal/ads/ni;->f:I

    add-int/2addr v1, v11

    add-int/lit8 v1, v1, -0x32

    .line 83
    goto/16 :goto_5

    .line 84
    :pswitch_5
    iget v1, p0, Lcom/google/android/gms/internal/ads/ni;->d:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/ni;->g:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/google/android/gms/internal/ads/ni;->i:I

    add-int/2addr v1, v2

    add-int/lit8 v2, v1, -0x32

    .line 85
    iget v1, p0, Lcom/google/android/gms/internal/ads/ni;->e:I

    iget v11, p0, Lcom/google/android/gms/internal/ads/ni;->h:I

    add-int/2addr v1, v11

    iget v11, p0, Lcom/google/android/gms/internal/ads/ni;->f:I

    add-int/2addr v1, v11

    add-int/lit8 v1, v1, -0x32

    .line 86
    goto/16 :goto_5

    :cond_15
    move v1, v5

    .line 91
    goto/16 :goto_2

    .line 94
    :cond_16
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/ni;->c:Z

    if-eqz v1, :cond_17

    .line 95
    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    iget v7, p0, Lcom/google/android/gms/internal/ads/ni;->d:I

    iget v10, p0, Lcom/google/android/gms/internal/ads/ni;->g:I

    add-int/2addr v7, v10

    aput v7, v1, v2

    const/4 v2, 0x1

    iget v7, p0, Lcom/google/android/gms/internal/ads/ni;->e:I

    iget v10, p0, Lcom/google/android/gms/internal/ads/ni;->h:I

    add-int/2addr v7, v10

    aput v7, v1, v2

    move-object v7, v1

    goto/16 :goto_3

    .line 96
    :cond_17
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->c()Lcom/google/android/gms/internal/ads/ve;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ni;->l:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/ve;->b(Landroid/app/Activity;)[I

    move-result-object v1

    .line 97
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->c()Lcom/google/android/gms/internal/ads/ve;

    move-result-object v2

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/ni;->l:Landroid/app/Activity;

    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/ads/ve;->c(Landroid/app/Activity;)[I

    move-result-object v10

    .line 98
    const/4 v2, 0x0

    aget v7, v1, v2

    .line 99
    iget v1, p0, Lcom/google/android/gms/internal/ads/ni;->d:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/ni;->g:I

    add-int/2addr v2, v1

    .line 100
    iget v1, p0, Lcom/google/android/gms/internal/ads/ni;->e:I

    iget v11, p0, Lcom/google/android/gms/internal/ads/ni;->h:I

    add-int/2addr v1, v11

    .line 101
    if-gez v2, :cond_18

    move v7, v3

    .line 105
    :goto_6
    const/4 v2, 0x0

    aget v2, v10, v2

    if-ge v1, v2, :cond_19

    .line 106
    const/4 v1, 0x0

    aget v1, v10, v1

    move v2, v1

    .line 109
    :goto_7
    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v10, 0x0

    aput v7, v1, v10

    const/4 v7, 0x1

    aput v2, v1, v7

    move-object v7, v1

    goto/16 :goto_3

    .line 103
    :cond_18
    iget v11, p0, Lcom/google/android/gms/internal/ads/ni;->i:I

    add-int/2addr v11, v2

    if-le v11, v7, :cond_23

    .line 104
    iget v2, p0, Lcom/google/android/gms/internal/ads/ni;->i:I

    sub-int v2, v7, v2

    move v7, v2

    goto :goto_6

    .line 107
    :cond_19
    iget v2, p0, Lcom/google/android/gms/internal/ads/ni;->f:I

    add-int/2addr v2, v1

    const/4 v11, 0x1

    aget v11, v10, v11

    if-le v2, v11, :cond_22

    .line 108
    const/4 v1, 0x1

    aget v1, v10, v1

    iget v2, p0, Lcom/google/android/gms/internal/ads/ni;->f:I

    sub-int/2addr v1, v2

    move v2, v1

    goto :goto_7

    .line 114
    :cond_1a
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->a()Lcom/google/android/gms/internal/ads/xr;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ni;->l:Landroid/app/Activity;

    iget v2, p0, Lcom/google/android/gms/internal/ads/ni;->i:I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/xr;->a(Landroid/content/Context;I)I

    move-result v10

    .line 115
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->a()Lcom/google/android/gms/internal/ads/xr;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ni;->l:Landroid/app/Activity;

    iget v2, p0, Lcom/google/android/gms/internal/ads/ni;->f:I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/xr;->a(Landroid/content/Context;I)I

    move-result v11

    .line 116
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ni;->k:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/act;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 117
    if-eqz v2, :cond_1e

    instance-of v1, v2, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1e

    .line 118
    move-object v0, v2

    check-cast v0, Landroid/view/ViewGroup;

    move-object v1, v0

    iget-object v12, p0, Lcom/google/android/gms/internal/ads/ni;->k:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v12}, Lcom/google/android/gms/internal/ads/act;->getView()Landroid/view/View;

    move-result-object v12

    invoke-virtual {v1, v12}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 119
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ni;->q:Landroid/widget/PopupWindow;

    if-nez v1, :cond_1d

    .line 120
    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/ni;->s:Landroid/view/ViewGroup;

    .line 121
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->c()Lcom/google/android/gms/internal/ads/ve;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ni;->k:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/act;->getView()Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/ve;->a(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 122
    new-instance v2, Landroid/widget/ImageView;

    iget-object v12, p0, Lcom/google/android/gms/internal/ads/ni;->l:Landroid/app/Activity;

    invoke-direct {v2, v12}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/ni;->n:Landroid/widget/ImageView;

    .line 123
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ni;->n:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 124
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ni;->k:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/act;->t()Lcom/google/android/gms/internal/ads/aei;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/ni;->m:Lcom/google/android/gms/internal/ads/aei;

    .line 125
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ni;->s:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ni;->n:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 130
    :goto_8
    new-instance v1, Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ni;->l:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/ni;->r:Landroid/widget/RelativeLayout;

    .line 131
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ni;->r:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 132
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ni;->r:Landroid/widget/RelativeLayout;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v10, v11}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 133
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->c()Lcom/google/android/gms/internal/ads/ve;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ni;->r:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-static {v1, v10, v11, v2}, Lcom/google/android/gms/internal/ads/ve;->a(Landroid/view/View;IIZ)Landroid/widget/PopupWindow;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/ni;->q:Landroid/widget/PopupWindow;

    .line 134
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ni;->q:Landroid/widget/PopupWindow;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 135
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ni;->q:Landroid/widget/PopupWindow;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 136
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ni;->q:Landroid/widget/PopupWindow;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/ni;->c:Z

    if-nez v1, :cond_1f

    move v1, v5

    :goto_9
    invoke-virtual {v2, v1}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 137
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ni;->r:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ni;->k:Lcom/google/android/gms/internal/ads/act;

    .line 138
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/act;->getView()Landroid/view/View;

    move-result-object v2

    const/4 v12, -0x1

    const/4 v13, -0x1

    .line 139
    invoke-virtual {v1, v2, v12, v13}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    .line 140
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ni;->l:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/ni;->o:Landroid/widget/LinearLayout;

    .line 141
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 142
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->a()Lcom/google/android/gms/internal/ads/xr;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ni;->l:Landroid/app/Activity;

    const/16 v12, 0x32

    invoke-static {v1, v12}, Lcom/google/android/gms/internal/ads/xr;->a(Landroid/content/Context;I)I

    move-result v1

    .line 143
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->a()Lcom/google/android/gms/internal/ads/xr;

    iget-object v12, p0, Lcom/google/android/gms/internal/ads/ni;->l:Landroid/app/Activity;

    const/16 v13, 0x32

    invoke-static {v12, v13}, Lcom/google/android/gms/internal/ads/xr;->a(Landroid/content/Context;I)I

    move-result v12

    invoke-direct {v2, v1, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 144
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ni;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v12

    sparse-switch v12, :sswitch_data_1

    :cond_1b
    move v1, v4

    :goto_a
    packed-switch v1, :pswitch_data_1

    .line 162
    const/16 v1, 0xa

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 163
    const/16 v1, 0xb

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 164
    :goto_b
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ni;->o:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/google/android/gms/internal/ads/nh;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/ads/nh;-><init>(Lcom/google/android/gms/internal/ads/ni;)V

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ni;->o:Landroid/widget/LinearLayout;

    const-string/jumbo v3, "Close button"

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 166
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ni;->r:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/ni;->o:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 167
    :try_start_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ni;->q:Landroid/widget/PopupWindow;

    .line 168
    invoke-virtual {v9}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    .line 169
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->a()Lcom/google/android/gms/internal/ads/xr;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/ni;->l:Landroid/app/Activity;

    const/4 v5, 0x0

    aget v5, v7, v5

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/xr;->a(Landroid/content/Context;I)I

    move-result v4

    .line 170
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->a()Lcom/google/android/gms/internal/ads/xr;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/ni;->l:Landroid/app/Activity;

    const/4 v6, 0x1

    aget v6, v7, v6

    invoke-static {v5, v6}, Lcom/google/android/gms/internal/ads/xr;->a(Landroid/content/Context;I)I

    move-result v5

    .line 171
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 181
    const/4 v1, 0x0

    :try_start_3
    aget v1, v7, v1

    const/4 v2, 0x1

    aget v2, v7, v2

    .line 182
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/ni;->p:Lcom/google/android/gms/internal/ads/ns;

    if-eqz v3, :cond_1c

    .line 183
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/ni;->p:Lcom/google/android/gms/internal/ads/ns;

    iget v4, p0, Lcom/google/android/gms/internal/ads/ni;->i:I

    iget v5, p0, Lcom/google/android/gms/internal/ads/ni;->f:I

    invoke-interface {v3, v1, v2, v4, v5}, Lcom/google/android/gms/internal/ads/ns;->a(IIII)V

    .line 184
    :cond_1c
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ni;->k:Lcom/google/android/gms/internal/ads/act;

    invoke-static {v10, v11}, Lcom/google/android/gms/internal/ads/aei;->a(II)Lcom/google/android/gms/internal/ads/aei;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/act;->a(Lcom/google/android/gms/internal/ads/aei;)V

    .line 185
    const/4 v1, 0x0

    aget v1, v7, v1

    const/4 v2, 0x1

    aget v2, v7, v2

    .line 186
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->c()Lcom/google/android/gms/internal/ads/ve;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/ni;->l:Landroid/app/Activity;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/ve;->c(Landroid/app/Activity;)[I

    move-result-object v3

    const/4 v4, 0x0

    aget v3, v3, v4

    .line 187
    sub-int/2addr v2, v3

    iget v3, p0, Lcom/google/android/gms/internal/ads/ni;->i:I

    iget v4, p0, Lcom/google/android/gms/internal/ads/ni;->f:I

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/nt;->a(IIII)V

    .line 188
    const-string/jumbo v1, "resized"

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/nt;->c(Ljava/lang/String;)V

    .line 189
    monitor-exit v8

    goto/16 :goto_0

    .line 127
    :cond_1d
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ni;->q:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    goto/16 :goto_8

    .line 128
    :cond_1e
    const-string/jumbo v1, "Webview is detached, probably in the middle of a resize or expand."

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/nt;->a(Ljava/lang/String;)V

    .line 129
    monitor-exit v8

    goto/16 :goto_0

    :cond_1f
    move v1, v3

    .line 136
    goto/16 :goto_9

    .line 144
    :sswitch_6
    const-string/jumbo v5, "top-left"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    move v1, v3

    goto/16 :goto_a

    :sswitch_7
    const-string/jumbo v3, "top-center"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    move v1, v5

    goto/16 :goto_a

    :sswitch_8
    const-string/jumbo v3, "center"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    move v1, v6

    goto/16 :goto_a

    :sswitch_9
    const-string/jumbo v3, "bottom-left"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    const/4 v1, 0x3

    goto/16 :goto_a

    :sswitch_a
    const-string/jumbo v3, "bottom-center"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    const/4 v1, 0x4

    goto/16 :goto_a

    :sswitch_b
    const-string/jumbo v3, "bottom-right"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    const/4 v1, 0x5

    goto/16 :goto_a

    .line 145
    :pswitch_6
    const/16 v1, 0xa

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 146
    const/16 v1, 0x9

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto/16 :goto_b

    .line 148
    :pswitch_7
    const/16 v1, 0xa

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 149
    const/16 v1, 0xe

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto/16 :goto_b

    .line 151
    :pswitch_8
    const/16 v1, 0xd

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto/16 :goto_b

    .line 153
    :pswitch_9
    const/16 v1, 0xc

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 154
    const/16 v1, 0x9

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto/16 :goto_b

    .line 156
    :pswitch_a
    const/16 v1, 0xc

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 157
    const/16 v1, 0xe

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto/16 :goto_b

    .line 159
    :pswitch_b
    const/16 v1, 0xc

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 160
    const/16 v1, 0xb

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto/16 :goto_b

    .line 173
    :catch_0
    move-exception v1

    .line 174
    const-string/jumbo v2, "Cannot show popup window: "

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_21

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_c
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/nt;->a(Ljava/lang/String;)V

    .line 175
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ni;->r:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ni;->k:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/act;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 176
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ni;->s:Landroid/view/ViewGroup;

    if-eqz v1, :cond_20

    .line 177
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ni;->s:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ni;->n:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 178
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ni;->s:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ni;->k:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/act;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 179
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ni;->k:Lcom/google/android/gms/internal/ads/act;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ni;->m:Lcom/google/android/gms/internal/ads/aei;

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/act;->a(Lcom/google/android/gms/internal/ads/aei;)V

    .line 180
    :cond_20
    monitor-exit v8

    goto/16 :goto_0

    .line 174
    :cond_21
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_c

    :cond_22
    move v2, v1

    goto/16 :goto_7

    :cond_23
    move v7, v2

    goto/16 :goto_6

    .line 68
    :sswitch_data_0
    .sparse-switch
        -0x514d33ab -> :sswitch_2
        -0x3c587281 -> :sswitch_0
        -0x27103597 -> :sswitch_3
        0x455fe3fa -> :sswitch_5
        0x4ccee637 -> :sswitch_4
        0x68a23bcd -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 144
    :sswitch_data_1
    .sparse-switch
        -0x514d33ab -> :sswitch_8
        -0x3c587281 -> :sswitch_6
        -0x27103597 -> :sswitch_9
        0x455fe3fa -> :sswitch_b
        0x4ccee637 -> :sswitch_a
        0x68a23bcd -> :sswitch_7
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public final a(Z)V
    .locals 3

    .prologue
    .line 190
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ni;->j:Ljava/lang/Object;

    monitor-enter v1

    .line 191
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ni;->q:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_2

    .line 192
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ni;->q:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 193
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ni;->r:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ni;->k:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/act;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 194
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ni;->s:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ni;->s:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ni;->n:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 196
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ni;->s:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ni;->k:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/act;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 197
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ni;->k:Lcom/google/android/gms/internal/ads/act;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ni;->m:Lcom/google/android/gms/internal/ads/aei;

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/act;->a(Lcom/google/android/gms/internal/ads/aei;)V

    .line 198
    :cond_0
    if-eqz p1, :cond_1

    .line 199
    const-string/jumbo v0, "default"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/nt;->c(Ljava/lang/String;)V

    .line 200
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ni;->p:Lcom/google/android/gms/internal/ads/ns;

    if-eqz v0, :cond_1

    .line 201
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ni;->p:Lcom/google/android/gms/internal/ads/ns;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/ns;->a()V

    .line 202
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ni;->q:Landroid/widget/PopupWindow;

    .line 203
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ni;->r:Landroid/widget/RelativeLayout;

    .line 204
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ni;->s:Landroid/view/ViewGroup;

    .line 205
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ni;->o:Landroid/widget/LinearLayout;

    .line 206
    :cond_2
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a()Z
    .locals 2

    .prologue
    .line 212
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ni;->j:Ljava/lang/Object;

    monitor-enter v1

    .line 213
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ni;->q:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 214
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
