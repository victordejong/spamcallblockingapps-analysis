.class final synthetic Lcom/google/android/gms/internal/ads/n21;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/uy1;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/s21;

.field private final b:Lcom/google/android/gms/internal/ads/al1;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/s21;Lcom/google/android/gms/internal/ads/al1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/n21;->a:Lcom/google/android/gms/internal/ads/s21;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/n21;->b:Lcom/google/android/gms/internal/ads/al1;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/rz1;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/n21;->a:Lcom/google/android/gms/internal/ads/s21;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/n21;->b:Lcom/google/android/gms/internal/ads/al1;

    check-cast p1, Lcom/google/android/gms/internal/ads/mn0;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/s21;->f(Lcom/google/android/gms/internal/ads/al1;Lcom/google/android/gms/internal/ads/mn0;)Lcom/google/android/gms/internal/ads/rz1;

    move-result-object p1

    return-object p1
.end method
