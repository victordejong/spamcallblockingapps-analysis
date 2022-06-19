.class final synthetic Lcom/google/android/gms/internal/ads/bnd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/die;

.field private final b:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/die;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bnd;->a:Lcom/google/android/gms/internal/ads/die;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bnd;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bnd;->a:Lcom/google/android/gms/internal/ads/die;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bnd;->b:Landroid/content/Context;

    .line 1023
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/die;->b:Lcom/google/android/gms/internal/ads/cxx;

    .line 2
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/cxx;->zzb(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
