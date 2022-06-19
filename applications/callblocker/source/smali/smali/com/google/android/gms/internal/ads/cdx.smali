.class final synthetic Lcom/google/android/gms/internal/ads/cdx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/cqt;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/cdy;

.field private final b:Lcom/google/android/gms/internal/ads/cew;

.field private final c:Lcom/google/android/gms/internal/ads/cec;

.field private final d:Lcom/google/android/gms/internal/ads/cex;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/cdy;Lcom/google/android/gms/internal/ads/cew;Lcom/google/android/gms/internal/ads/cec;Lcom/google/android/gms/internal/ads/cex;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cdx;->a:Lcom/google/android/gms/internal/ads/cdy;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/cdx;->b:Lcom/google/android/gms/internal/ads/cew;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/cdx;->c:Lcom/google/android/gms/internal/ads/cec;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/cdx;->d:Lcom/google/android/gms/internal/ads/cex;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/crt;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cdx;->a:Lcom/google/android/gms/internal/ads/cdy;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cdx;->b:Lcom/google/android/gms/internal/ads/cew;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/cdx;->c:Lcom/google/android/gms/internal/ads/cec;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/cdx;->d:Lcom/google/android/gms/internal/ads/cex;

    check-cast p1, Lcom/google/android/gms/internal/ads/cei;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/google/android/gms/internal/ads/cdy;->a(Lcom/google/android/gms/internal/ads/cew;Lcom/google/android/gms/internal/ads/cec;Lcom/google/android/gms/internal/ads/cex;Lcom/google/android/gms/internal/ads/cei;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    return-object v0
.end method
