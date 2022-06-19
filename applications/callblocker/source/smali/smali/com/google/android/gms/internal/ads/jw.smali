.class final synthetic Lcom/google/android/gms/internal/ads/jw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/coe;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/google/android/gms/internal/ads/fa;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/fa;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/jw;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/jw;->b:Lcom/google/android/gms/internal/ads/fa;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jw;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/jw;->b:Lcom/google/android/gms/internal/ads/fa;

    check-cast p1, Lcom/google/android/gms/internal/ads/jc;

    .line 2
    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/jc;->b(Ljava/lang/String;Lcom/google/android/gms/internal/ads/fa;)V

    .line 4
    return-object p1
.end method
