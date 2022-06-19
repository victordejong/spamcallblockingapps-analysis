.class final synthetic Lcom/google/android/gms/internal/ads/sq1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final b:Lcom/google/android/gms/internal/ads/tq1;

.field private final c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/tq1;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/sq1;->b:Lcom/google/android/gms/internal/ads/tq1;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/sq1;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sq1;->b:Lcom/google/android/gms/internal/ads/tq1;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/sq1;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/tq1;->c(Ljava/lang/String;)V

    return-void
.end method
