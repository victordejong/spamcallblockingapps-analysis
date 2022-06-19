.class final synthetic Lcom/google/android/gms/internal/ads/ceh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/cqt;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/cee;

.field private final b:Lcom/google/android/gms/internal/ads/cew;

.field private final c:Lcom/google/android/gms/internal/ads/cex;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/cee;Lcom/google/android/gms/internal/ads/cew;Lcom/google/android/gms/internal/ads/cex;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ceh;->a:Lcom/google/android/gms/internal/ads/cee;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ceh;->b:Lcom/google/android/gms/internal/ads/cew;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/ceh;->c:Lcom/google/android/gms/internal/ads/cex;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/crt;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ceh;->a:Lcom/google/android/gms/internal/ads/cee;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ceh;->b:Lcom/google/android/gms/internal/ads/cew;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ceh;->c:Lcom/google/android/gms/internal/ads/cex;

    check-cast p1, Lcom/google/android/gms/internal/ads/cet;

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/cee;->a(Lcom/google/android/gms/internal/ads/cew;Lcom/google/android/gms/internal/ads/cex;Lcom/google/android/gms/internal/ads/cet;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    return-object v0
.end method
