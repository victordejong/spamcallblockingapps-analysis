.class final Lcom/google/android/gms/internal/ads/edx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:I

.field private final synthetic b:J

.field private final synthetic c:Lcom/google/android/gms/internal/ads/edt;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/edt;IJ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/edx;->c:Lcom/google/android/gms/internal/ads/edt;

    iput p2, p0, Lcom/google/android/gms/internal/ads/edx;->a:I

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/edx;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/edx;->c:Lcom/google/android/gms/internal/ads/edt;

    .line 1026
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/edt;->b:Lcom/google/android/gms/internal/ads/edu;

    .line 2
    iget v1, p0, Lcom/google/android/gms/internal/ads/edx;->a:I

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/edu;->a(I)V

    return-void
.end method
