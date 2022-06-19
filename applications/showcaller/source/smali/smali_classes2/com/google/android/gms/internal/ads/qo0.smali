.class final synthetic Lcom/google/android/gms/internal/ads/qo0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final d:Lcom/google/android/gms/internal/ads/ro0;

.field private final e:I

.field private final f:I

.field private final g:Z

.field private final h:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/ro0;IIZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/qo0;->d:Lcom/google/android/gms/internal/ads/ro0;

    iput p2, p0, Lcom/google/android/gms/internal/ads/qo0;->e:I

    iput p3, p0, Lcom/google/android/gms/internal/ads/qo0;->f:I

    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/qo0;->g:Z

    iput-boolean p5, p0, Lcom/google/android/gms/internal/ads/qo0;->h:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qo0;->d:Lcom/google/android/gms/internal/ads/ro0;

    iget v1, p0, Lcom/google/android/gms/internal/ads/qo0;->e:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/qo0;->f:I

    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/qo0;->g:Z

    iget-boolean v4, p0, Lcom/google/android/gms/internal/ads/qo0;->h:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/ro0;->I6(IIZZ)V

    return-void
.end method
