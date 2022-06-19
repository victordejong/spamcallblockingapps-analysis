.class public Lcom/google/android/gms/internal/ads/gy3;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private a:I

.field private b:I

.field private c:Z

.field private final d:Lcom/google/android/gms/internal/ads/zzfoj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzfoj<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/google/android/gms/internal/ads/zzfoj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzfoj<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/google/android/gms/internal/ads/zzfoj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzfoj<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/google/android/gms/internal/ads/zzfoj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzfoj<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private h:I

.field private final i:Lcom/google/android/gms/internal/ads/zzfot;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzfot<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    iput v0, p0, Lcom/google/android/gms/internal/ads/gy3;->a:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/gy3;->b:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/gy3;->c:Z

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfoj;->zzi()Lcom/google/android/gms/internal/ads/zzfoj;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/gy3;->d:Lcom/google/android/gms/internal/ads/zzfoj;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfoj;->zzi()Lcom/google/android/gms/internal/ads/zzfoj;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/gy3;->e:Lcom/google/android/gms/internal/ads/zzfoj;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfoj;->zzi()Lcom/google/android/gms/internal/ads/zzfoj;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/gy3;->f:Lcom/google/android/gms/internal/ads/zzfoj;

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfoj;->zzi()Lcom/google/android/gms/internal/ads/zzfoj;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/gy3;->g:Lcom/google/android/gms/internal/ads/zzfoj;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/gy3;->h:I

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfot;->zzh()Lcom/google/android/gms/internal/ads/zzfot;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/gy3;->i:Lcom/google/android/gms/internal/ads/zzfot;

    return-void
.end method

.method protected constructor <init>(Lcom/google/android/gms/internal/ads/az3;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lcom/google/android/gms/internal/ads/az3;->l:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/gy3;->a:I

    iget v0, p1, Lcom/google/android/gms/internal/ads/az3;->m:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/gy3;->b:I

    iget-boolean v0, p1, Lcom/google/android/gms/internal/ads/az3;->n:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/gy3;->c:Z

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/az3;->o:Lcom/google/android/gms/internal/ads/zzfoj;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/gy3;->d:Lcom/google/android/gms/internal/ads/zzfoj;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/az3;->p:Lcom/google/android/gms/internal/ads/zzfoj;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/gy3;->e:Lcom/google/android/gms/internal/ads/zzfoj;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/az3;->t:Lcom/google/android/gms/internal/ads/zzfoj;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/gy3;->f:Lcom/google/android/gms/internal/ads/zzfoj;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/az3;->u:Lcom/google/android/gms/internal/ads/zzfoj;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/gy3;->g:Lcom/google/android/gms/internal/ads/zzfoj;

    iget v0, p1, Lcom/google/android/gms/internal/ads/az3;->v:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/gy3;->h:I

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/az3;->z:Lcom/google/android/gms/internal/ads/zzfot;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/gy3;->i:Lcom/google/android/gms/internal/ads/zzfot;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/gy3;)I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/ads/gy3;->a:I

    return p0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/ads/gy3;)I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/ads/gy3;->b:I

    return p0
.end method

.method static synthetic c(Lcom/google/android/gms/internal/ads/gy3;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/gy3;->c:Z

    return p0
.end method

.method static synthetic d(Lcom/google/android/gms/internal/ads/gy3;)Lcom/google/android/gms/internal/ads/zzfoj;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/gy3;->d:Lcom/google/android/gms/internal/ads/zzfoj;

    return-object p0
.end method

.method static synthetic e(Lcom/google/android/gms/internal/ads/gy3;)Lcom/google/android/gms/internal/ads/zzfoj;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/gy3;->e:Lcom/google/android/gms/internal/ads/zzfoj;

    return-object p0
.end method

.method static synthetic f(Lcom/google/android/gms/internal/ads/gy3;)Lcom/google/android/gms/internal/ads/zzfoj;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/gy3;->f:Lcom/google/android/gms/internal/ads/zzfoj;

    return-object p0
.end method

.method static synthetic g(Lcom/google/android/gms/internal/ads/gy3;)Lcom/google/android/gms/internal/ads/zzfoj;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/gy3;->g:Lcom/google/android/gms/internal/ads/zzfoj;

    return-object p0
.end method

.method static synthetic h(Lcom/google/android/gms/internal/ads/gy3;)I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/ads/gy3;->h:I

    return p0
.end method

.method static synthetic i(Lcom/google/android/gms/internal/ads/gy3;)Lcom/google/android/gms/internal/ads/zzfot;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/gy3;->i:Lcom/google/android/gms/internal/ads/zzfot;

    return-object p0
.end method


# virtual methods
.method public j(IIZ)Lcom/google/android/gms/internal/ads/gy3;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/ads/gy3;->a:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/gy3;->b:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/gy3;->c:Z

    return-object p0
.end method

.method public final k(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/gy3;
    .locals 2

    .line 1
    sget v0, Lcom/google/android/gms/internal/ads/wa;->a:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_2

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    .line 2
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_2

    :cond_0
    const-string v0, "captioning"

    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/CaptioningManager;

    if-eqz p1, :cond_2

    .line 4
    invoke-virtual {p1}, Landroid/view/accessibility/CaptioningManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/16 v0, 0x440

    iput v0, p0, Lcom/google/android/gms/internal/ads/gy3;->h:I

    .line 5
    invoke-virtual {p1}, Landroid/view/accessibility/CaptioningManager;->getLocale()Ljava/util/Locale;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/wa;->U(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfoj;->zzj(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfoj;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/gy3;->g:Lcom/google/android/gms/internal/ads/zzfoj;

    :cond_2
    :goto_0
    return-object p0
.end method
