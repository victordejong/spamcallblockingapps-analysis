.class final synthetic Lcom/google/android/gms/internal/ads/bue;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/cqt;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/btx;

.field private final b:[Lcom/google/android/gms/internal/ads/bcy;

.field private final c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/btx;[Lcom/google/android/gms/internal/ads/bcy;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bue;->a:Lcom/google/android/gms/internal/ads/btx;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bue;->b:[Lcom/google/android/gms/internal/ads/bcy;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bue;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/crt;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bue;->a:Lcom/google/android/gms/internal/ads/btx;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bue;->b:[Lcom/google/android/gms/internal/ads/bcy;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bue;->c:Ljava/lang/String;

    check-cast p1, Lcom/google/android/gms/internal/ads/bcy;

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/btx;->a([Lcom/google/android/gms/internal/ads/bcy;Ljava/lang/String;Lcom/google/android/gms/internal/ads/bcy;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    return-object v0
.end method
