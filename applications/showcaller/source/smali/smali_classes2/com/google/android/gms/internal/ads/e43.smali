.class final synthetic Lcom/google/android/gms/internal/ads/e43;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field private final d:Lcom/google/android/gms/internal/ads/lb3;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/lb3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/e43;->d:Lcom/google/android/gms/internal/ads/lb3;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/e43;->d:Lcom/google/android/gms/internal/ads/lb3;

    sget v1, Lcom/google/android/gms/internal/ads/mc3;->d:I

    .line 2
    invoke-interface {v0, p2}, Lcom/google/android/gms/internal/ads/lb3;->a(Ljava/lang/Object;)I

    move-result p2

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/lb3;->a(Ljava/lang/Object;)I

    move-result p1

    sub-int/2addr p2, p1

    return p2
.end method
