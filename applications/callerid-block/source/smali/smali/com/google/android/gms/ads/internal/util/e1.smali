.class final synthetic Lcom/google/android/gms/ads/internal/util/e1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final a:Landroid/net/Uri;


# direct methods
.method constructor <init>(Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/util/e1;->a:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/e1;->a:Landroid/net/Uri;

    sget-object v1, Lcom/google/android/gms/ads/internal/util/l1;->i:Lcom/google/android/gms/internal/ads/tv1;

    invoke-static {}, Lcom/google/android/gms/ads/internal/r;->d()Lcom/google/android/gms/ads/internal/util/l1;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/l1;->p(Landroid/net/Uri;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
