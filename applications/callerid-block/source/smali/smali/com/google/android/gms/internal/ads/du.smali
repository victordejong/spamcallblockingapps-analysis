.class final synthetic Lcom/google/android/gms/internal/ads/du;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final b:Lcom/google/android/gms/internal/ads/eu;

.field private final c:I

.field private final d:I

.field private final e:Z

.field private final f:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/eu;IIZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/du;->b:Lcom/google/android/gms/internal/ads/eu;

    iput p2, p0, Lcom/google/android/gms/internal/ads/du;->c:I

    iput p3, p0, Lcom/google/android/gms/internal/ads/du;->d:I

    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/du;->e:Z

    iput-boolean p5, p0, Lcom/google/android/gms/internal/ads/du;->f:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/du;->b:Lcom/google/android/gms/internal/ads/eu;

    iget v1, p0, Lcom/google/android/gms/internal/ads/du;->c:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/du;->d:I

    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/du;->e:Z

    iget-boolean v4, p0, Lcom/google/android/gms/internal/ads/du;->f:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/eu;->D6(IIZZ)V

    return-void
.end method
