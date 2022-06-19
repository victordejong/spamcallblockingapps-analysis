.class final synthetic Lcom/google/android/gms/internal/ads/cdz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/cqt;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/cdy;

.field private final b:Lcom/google/android/gms/internal/ads/cex;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/cdy;Lcom/google/android/gms/internal/ads/cex;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cdz;->a:Lcom/google/android/gms/internal/ads/cdy;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/cdz;->b:Lcom/google/android/gms/internal/ads/cex;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/crt;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cdz;->a:Lcom/google/android/gms/internal/ads/cdy;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cdz;->b:Lcom/google/android/gms/internal/ads/cex;

    check-cast p1, Lcom/google/android/gms/internal/ads/cjl;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/cdy;->a(Lcom/google/android/gms/internal/ads/cex;Lcom/google/android/gms/internal/ads/cjl;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    return-object v0
.end method
