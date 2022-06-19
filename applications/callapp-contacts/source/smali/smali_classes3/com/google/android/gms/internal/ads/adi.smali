.class final synthetic Lcom/google/android/gms/internal/ads/adi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/abb;

.field private final b:Z

.field private final c:J


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/abb;ZJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/adi;->a:Lcom/google/android/gms/internal/ads/abb;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/adi;->b:Z

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/adi;->c:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adi;->a:Lcom/google/android/gms/internal/ads/abb;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/adi;->b:Z

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/adi;->c:J

    .line 2
    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/abb;->a(ZJ)V

    return-void
.end method
