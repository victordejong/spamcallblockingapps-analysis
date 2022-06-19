.class final synthetic Lcom/google/android/gms/internal/ads/bqq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/cqt;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/bqn;

.field private final b:Lcom/google/android/gms/internal/ads/cgr;

.field private final c:Lcom/google/android/gms/internal/ads/bev;

.field private final d:Lcom/google/android/gms/internal/ads/chd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bqn;Lcom/google/android/gms/internal/ads/cgr;Lcom/google/android/gms/internal/ads/bev;Lcom/google/android/gms/internal/ads/chd;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bqq;->a:Lcom/google/android/gms/internal/ads/bqn;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bqq;->b:Lcom/google/android/gms/internal/ads/cgr;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bqq;->c:Lcom/google/android/gms/internal/ads/bev;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/bqq;->d:Lcom/google/android/gms/internal/ads/chd;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/crt;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bqq;->a:Lcom/google/android/gms/internal/ads/bqn;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bqq;->b:Lcom/google/android/gms/internal/ads/cgr;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bqq;->c:Lcom/google/android/gms/internal/ads/bev;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/bqq;->d:Lcom/google/android/gms/internal/ads/chd;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/google/android/gms/internal/ads/bqn;->a(Lcom/google/android/gms/internal/ads/cgr;Lcom/google/android/gms/internal/ads/bev;Lcom/google/android/gms/internal/ads/chd;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    return-object v0
.end method
