.class final synthetic Lcom/google/android/gms/internal/ads/aqy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/atg;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/qr;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/qr;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/aqy;->a:Lcom/google/android/gms/internal/ads/qr;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/aqy;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/aqy;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aqy;->a:Lcom/google/android/gms/internal/ads/qr;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aqy;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/aqy;->c:Ljava/lang/String;

    check-cast p1, Lcom/google/android/gms/internal/ads/app;

    .line 2
    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/gms/internal/ads/app;->a(Lcom/google/android/gms/internal/ads/qr;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    return-void
.end method
