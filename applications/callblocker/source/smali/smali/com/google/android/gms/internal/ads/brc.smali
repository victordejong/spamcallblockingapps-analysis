.class final synthetic Lcom/google/android/gms/internal/ads/brc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/bqz;

.field private final b:Lcom/google/android/gms/internal/ads/chd;

.field private final c:Lcom/google/android/gms/internal/ads/cgr;

.field private final d:Lcom/google/android/gms/internal/ads/bmx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bqz;Lcom/google/android/gms/internal/ads/chd;Lcom/google/android/gms/internal/ads/cgr;Lcom/google/android/gms/internal/ads/bmx;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/brc;->a:Lcom/google/android/gms/internal/ads/bqz;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/brc;->b:Lcom/google/android/gms/internal/ads/chd;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/brc;->c:Lcom/google/android/gms/internal/ads/cgr;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/brc;->d:Lcom/google/android/gms/internal/ads/bmx;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/brc;->a:Lcom/google/android/gms/internal/ads/bqz;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/brc;->b:Lcom/google/android/gms/internal/ads/chd;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/brc;->c:Lcom/google/android/gms/internal/ads/cgr;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/brc;->d:Lcom/google/android/gms/internal/ads/bmx;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/bqz;->a:Lcom/google/android/gms/internal/ads/bqx;

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/bqx;->a(Lcom/google/android/gms/internal/ads/bqx;Lcom/google/android/gms/internal/ads/chd;Lcom/google/android/gms/internal/ads/cgr;Lcom/google/android/gms/internal/ads/bmx;)V

    .line 3
    return-void
.end method
