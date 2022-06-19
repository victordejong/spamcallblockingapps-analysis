.class final synthetic Lcom/google/android/gms/internal/ads/bob;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/bny;

.field private final b:Lcom/google/android/gms/internal/ads/chd;

.field private final c:Lcom/google/android/gms/internal/ads/cgr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bny;Lcom/google/android/gms/internal/ads/chd;Lcom/google/android/gms/internal/ads/cgr;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bob;->a:Lcom/google/android/gms/internal/ads/bny;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bob;->b:Lcom/google/android/gms/internal/ads/chd;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bob;->c:Lcom/google/android/gms/internal/ads/cgr;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bob;->a:Lcom/google/android/gms/internal/ads/bny;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bob;->b:Lcom/google/android/gms/internal/ads/chd;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bob;->c:Lcom/google/android/gms/internal/ads/cgr;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/bny;->c(Lcom/google/android/gms/internal/ads/chd;Lcom/google/android/gms/internal/ads/cgr;)Lcom/google/android/gms/internal/ads/akk;

    move-result-object v0

    return-object v0
.end method
