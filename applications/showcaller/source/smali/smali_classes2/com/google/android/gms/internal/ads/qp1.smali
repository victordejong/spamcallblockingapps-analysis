.class final synthetic Lcom/google/android/gms/internal/ads/qp1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final d:Lcom/google/android/gms/internal/ads/vp1;

.field private final e:Lcom/google/android/gms/internal/ads/ok2;

.field private final f:Lcom/google/android/gms/internal/ads/a40;

.field private final g:Ljava/util/List;

.field private final h:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/vp1;Lcom/google/android/gms/internal/ads/ok2;Lcom/google/android/gms/internal/ads/a40;Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/qp1;->d:Lcom/google/android/gms/internal/ads/vp1;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/qp1;->e:Lcom/google/android/gms/internal/ads/ok2;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/qp1;->f:Lcom/google/android/gms/internal/ads/a40;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/qp1;->g:Ljava/util/List;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/qp1;->h:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qp1;->d:Lcom/google/android/gms/internal/ads/vp1;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/qp1;->e:Lcom/google/android/gms/internal/ads/ok2;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/qp1;->f:Lcom/google/android/gms/internal/ads/a40;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/qp1;->g:Ljava/util/List;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/qp1;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/vp1;->n(Lcom/google/android/gms/internal/ads/ok2;Lcom/google/android/gms/internal/ads/a40;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method
