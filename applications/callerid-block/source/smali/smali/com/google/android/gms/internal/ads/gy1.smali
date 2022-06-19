.class final Lcom/google/android/gms/internal/ads/gy1;
.super Ljava/lang/Object;
.source ""


# static fields
.field static final c:Lcom/google/android/gms/internal/ads/gy1;


# instance fields
.field volatile a:Ljava/lang/Thread;
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field volatile b:Lcom/google/android/gms/internal/ads/gy1;
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/gy1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/gy1;-><init>(Z)V

    sput-object v0, Lcom/google/android/gms/internal/ads/gy1;->c:Lcom/google/android/gms/internal/ads/gy1;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/ads/wx1;->q()Lcom/google/android/gms/internal/ads/xx1;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/google/android/gms/internal/ads/xx1;->a(Lcom/google/android/gms/internal/ads/gy1;Ljava/lang/Thread;)V

    return-void
.end method

.method constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
