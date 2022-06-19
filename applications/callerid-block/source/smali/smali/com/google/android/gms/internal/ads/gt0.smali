.class final synthetic Lcom/google/android/gms/internal/ads/gt0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final b:Lcom/google/android/gms/internal/ads/lt0;

.field private final c:Lcom/google/android/gms/internal/ads/im1;

.field private final d:Lcom/google/android/gms/internal/ads/ta;

.field private final e:Ljava/util/List;

.field private final f:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/lt0;Lcom/google/android/gms/internal/ads/im1;Lcom/google/android/gms/internal/ads/ta;Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/gt0;->b:Lcom/google/android/gms/internal/ads/lt0;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/gt0;->c:Lcom/google/android/gms/internal/ads/im1;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/gt0;->d:Lcom/google/android/gms/internal/ads/ta;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/gt0;->e:Ljava/util/List;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/gt0;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gt0;->b:Lcom/google/android/gms/internal/ads/lt0;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/gt0;->c:Lcom/google/android/gms/internal/ads/im1;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/gt0;->d:Lcom/google/android/gms/internal/ads/ta;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/gt0;->e:Ljava/util/List;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/gt0;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/lt0;->f(Lcom/google/android/gms/internal/ads/im1;Lcom/google/android/gms/internal/ads/ta;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method
