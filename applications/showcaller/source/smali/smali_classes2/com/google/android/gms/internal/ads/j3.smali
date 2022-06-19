.class final synthetic Lcom/google/android/gms/internal/ads/j3;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/o9;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/j5;

.field private final b:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/j5;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/j3;->a:Lcom/google/android/gms/internal/ads/j5;

    iput p2, p0, Lcom/google/android/gms/internal/ads/j3;->b:I

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/j3;->a:Lcom/google/android/gms/internal/ads/j5;

    iget v1, p0, Lcom/google/android/gms/internal/ads/j3;->b:I

    check-cast p1, Lcom/google/android/gms/internal/ads/h6;

    .line 2
    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/h6;->w0(Lcom/google/android/gms/internal/ads/j5;I)V

    return-void
.end method
