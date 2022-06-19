.class final synthetic Lcom/google/android/gms/internal/ads/s3;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/o9;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/b6;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/b6;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/s3;->a:Lcom/google/android/gms/internal/ads/b6;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/s3;->a:Lcom/google/android/gms/internal/ads/b6;

    check-cast p1, Lcom/google/android/gms/internal/ads/h6;

    .line 2
    iget v0, v0, Lcom/google/android/gms/internal/ads/b6;->n:I

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/h6;->C0(I)V

    return-void
.end method
