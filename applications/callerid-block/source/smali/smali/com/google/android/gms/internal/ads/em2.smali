.class final Lcom/google/android/gms/internal/ads/em2;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/gl2;

.field private final b:J

.field private final c:J


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/gl2;JJLcom/google/android/gms/internal/ads/am2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/em2;->a:Lcom/google/android/gms/internal/ads/gl2;

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/em2;->b:J

    iput-wide p4, p0, Lcom/google/android/gms/internal/ads/em2;->c:J

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/em2;)Lcom/google/android/gms/internal/ads/gl2;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/em2;->a:Lcom/google/android/gms/internal/ads/gl2;

    return-object p0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/ads/em2;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/em2;->c:J

    return-wide v0
.end method

.method static synthetic c(Lcom/google/android/gms/internal/ads/em2;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/em2;->b:J

    return-wide v0
.end method
