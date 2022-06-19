.class public final Lcom/google/android/gms/internal/ads/h83;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# static fields
.field public static final a:Lcom/google/android/gms/internal/ads/h83;

.field public static final b:Lcom/google/android/gms/internal/ads/w2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/w2<",
            "Lcom/google/android/gms/internal/ads/h83;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final c:I

.field private d:Landroid/media/AudioAttributes;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v6, Lcom/google/android/gms/internal/ads/h83;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/h83;-><init>(IIIILcom/google/android/gms/internal/ads/fj2;)V

    sput-object v6, Lcom/google/android/gms/internal/ads/h83;->a:Lcom/google/android/gms/internal/ads/h83;

    sget-object v0, Lcom/google/android/gms/internal/ads/js1;->a:Lcom/google/android/gms/internal/ads/w2;

    sput-object v0, Lcom/google/android/gms/internal/ads/h83;->b:Lcom/google/android/gms/internal/ads/w2;

    return-void
.end method

.method synthetic constructor <init>(IIIILcom/google/android/gms/internal/ads/fj2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/h83;->c:I

    return-void
.end method


# virtual methods
.method public final a()Landroid/media/AudioAttributes;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/h83;->d:Landroid/media/AudioAttributes;

    if-nez v0, :cond_1

    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 3
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setFlags(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 5
    sget v2, Lcom/google/android/gms/internal/ads/wa;->a:I

    const/16 v3, 0x1d

    if-lt v2, v3, :cond_0

    .line 6
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setAllowedCapturePolicy(I)Landroid/media/AudioAttributes$Builder;

    .line 7
    :cond_0
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/h83;->d:Landroid/media/AudioAttributes;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/h83;->d:Landroid/media/AudioAttributes;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    if-eqz p1, :cond_2

    .line 1
    const-class v1, Lcom/google/android/gms/internal/ads/h83;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/ads/h83;

    return v0

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 1

    const v0, 0xef8fb1    # 2.200023E-38f

    return v0
.end method
