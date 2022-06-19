.class final Lcom/google/android/gms/internal/ads/dml;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dmh;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/dmj;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/dmj;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dml;->a:Lcom/google/android/gms/internal/ads/dmj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/dmj;Lcom/google/android/gms/internal/ads/dmm;)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/dml;-><init>(Lcom/google/android/gms/internal/ads/dmj;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/dmj;->v()V

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dml;->a:Lcom/google/android/gms/internal/ads/dmj;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/dmj;->a(Lcom/google/android/gms/internal/ads/dmj;Z)Z

    .line 7
    return-void
.end method

.method public final a(I)V
    .locals 1

    .prologue
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dml;->a:Lcom/google/android/gms/internal/ads/dmj;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dmj;->a(Lcom/google/android/gms/internal/ads/dmj;)Lcom/google/android/gms/internal/ads/dlt;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/dlt;->a(I)V

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/dmj;->b(I)V

    .line 4
    return-void
.end method

.method public final a(IJJ)V
    .locals 6

    .prologue
    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dml;->a:Lcom/google/android/gms/internal/ads/dmj;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dmj;->a(Lcom/google/android/gms/internal/ads/dmj;)Lcom/google/android/gms/internal/ads/dlt;

    move-result-object v0

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/dlt;->a(IJJ)V

    .line 9
    invoke-static {p1, p2, p3, p4, p5}, Lcom/google/android/gms/internal/ads/dmj;->a(IJJ)V

    .line 10
    return-void
.end method
