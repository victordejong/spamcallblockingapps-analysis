.class final synthetic Lcom/google/android/gms/internal/ads/bbi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/cqt;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/bbe;

.field private final b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bbe;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bbi;->a:Lcom/google/android/gms/internal/ads/bbe;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bbi;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/crt;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bbi;->a:Lcom/google/android/gms/internal/ads/bbe;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bbi;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/bbe;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    return-object v0
.end method
