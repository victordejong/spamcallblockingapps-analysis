.class public final Lcom/google/android/gms/internal/ads/aaj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# instance fields
.field private final a:Landroid/media/AudioManager;

.field private final b:Lcom/google/android/gms/internal/ads/aai;

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/aai;)V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/google/android/gms/internal/ads/aaj;->f:F

    .line 3
    const-string/jumbo v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/aaj;->a:Landroid/media/AudioManager;

    .line 4
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/aaj;->b:Lcom/google/android/gms/internal/ads/aai;

    .line 5
    return-void
.end method

.method private final d()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 23
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/aaj;->d:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/aaj;->e:Z

    if-nez v2, :cond_2

    iget v2, p0, Lcom/google/android/gms/internal/ads/aaj;->f:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    move v2, v0

    .line 24
    :goto_0
    if-eqz v2, :cond_5

    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/aaj;->c:Z

    if-nez v3, :cond_5

    .line 26
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/aaj;->a:Landroid/media/AudioManager;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/aaj;->c:Z

    if-eqz v2, :cond_3

    .line 31
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aaj;->b:Lcom/google/android/gms/internal/ads/aai;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/aai;->e()V

    .line 39
    :cond_1
    :goto_2
    return-void

    :cond_2
    move v2, v1

    .line 23
    goto :goto_0

    .line 28
    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/aaj;->a:Landroid/media/AudioManager;

    const/4 v3, 0x3

    const/4 v4, 0x2

    .line 29
    invoke-virtual {v2, p0, v3, v4}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v2

    .line 30
    if-ne v2, v0, :cond_4

    :goto_3
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/aaj;->c:Z

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_3

    .line 32
    :cond_5
    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/aaj;->c:Z

    if-eqz v2, :cond_1

    .line 34
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/aaj;->a:Landroid/media/AudioManager;

    if-eqz v2, :cond_6

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/aaj;->c:Z

    if-nez v2, :cond_7

    .line 38
    :cond_6
    :goto_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aaj;->b:Lcom/google/android/gms/internal/ads/aai;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/aai;->e()V

    goto :goto_2

    .line 36
    :cond_7
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/aaj;->a:Landroid/media/AudioManager;

    invoke-virtual {v2, p0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    move-result v2

    .line 37
    if-nez v2, :cond_8

    :goto_5
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/aaj;->c:Z

    goto :goto_4

    :cond_8
    move v0, v1

    goto :goto_5
.end method


# virtual methods
.method public final a()F
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 12
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/aaj;->e:Z

    if-eqz v0, :cond_0

    move v0, v1

    .line 13
    :goto_0
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/aaj;->c:Z

    if-eqz v2, :cond_1

    :goto_1
    return v0

    .line 12
    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/aaj;->f:F

    goto :goto_0

    :cond_1
    move v0, v1

    .line 13
    goto :goto_1
.end method

.method public final a(F)V
    .locals 0

    .prologue
    .line 9
    iput p1, p0, Lcom/google/android/gms/internal/ads/aaj;->f:F

    .line 10
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/aaj;->d()V

    .line 11
    return-void
.end method

.method public final a(Z)V
    .locals 0

    .prologue
    .line 6
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/aaj;->e:Z

    .line 7
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/aaj;->d()V

    .line 8
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/aaj;->d:Z

    .line 15
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/aaj;->d()V

    .line 16
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/aaj;->d:Z

    .line 18
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/aaj;->d()V

    .line 19
    return-void
.end method

.method public final onAudioFocusChange(I)V
    .locals 1

    .prologue
    .line 20
    if-lez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/aaj;->c:Z

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aaj;->b:Lcom/google/android/gms/internal/ads/aai;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/aai;->e()V

    .line 22
    return-void

    .line 20
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
