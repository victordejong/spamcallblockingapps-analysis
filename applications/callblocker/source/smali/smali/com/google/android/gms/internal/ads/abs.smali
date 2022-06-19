.class public final Lcom/google/android/gms/internal/ads/abs;
.super Lcom/google/android/gms/internal/ads/uq;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field final a:Lcom/google/android/gms/internal/ads/aad;

.field final b:Lcom/google/android/gms/internal/ads/abt;

.field private final c:Ljava/lang/String;

.field private final d:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/aad;Lcom/google/android/gms/internal/ads/abt;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/uq;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/abs;->a:Lcom/google/android/gms/internal/ads/aad;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/abs;->b:Lcom/google/android/gms/internal/ads/abt;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/abs;->c:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/abs;->d:[Ljava/lang/String;

    .line 6
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->y()Lcom/google/android/gms/internal/ads/abu;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/abu;->a(Lcom/google/android/gms/internal/ads/abs;)V

    .line 7
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 8
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/abs;->b:Lcom/google/android/gms/internal/ads/abt;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/abs;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/abs;->d:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/abt;->a(Ljava/lang/String;[Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    sget-object v0, Lcom/google/android/gms/internal/ads/ve;->a:Lcom/google/android/gms/internal/ads/cnz;

    new-instance v1, Lcom/google/android/gms/internal/ads/abr;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/abr;-><init>(Lcom/google/android/gms/internal/ads/abs;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/cnz;->post(Ljava/lang/Runnable;)Z

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception v0

    sget-object v1, Lcom/google/android/gms/internal/ads/ve;->a:Lcom/google/android/gms/internal/ads/cnz;

    new-instance v2, Lcom/google/android/gms/internal/ads/abr;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/abr;-><init>(Lcom/google/android/gms/internal/ads/abs;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/cnz;->post(Ljava/lang/Runnable;)Z

    .line 12
    throw v0
.end method
