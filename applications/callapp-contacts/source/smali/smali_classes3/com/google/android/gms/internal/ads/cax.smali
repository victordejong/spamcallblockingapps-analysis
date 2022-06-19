.class final synthetic Lcom/google/android/gms/internal/ads/cax;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/caw;

.field private final b:Landroid/net/Uri;

.field private final c:Lcom/google/android/gms/dynamic/b;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/caw;Landroid/net/Uri;Lcom/google/android/gms/dynamic/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cax;->a:Lcom/google/android/gms/internal/ads/caw;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/cax;->b:Landroid/net/Uri;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/cax;->c:Lcom/google/android/gms/dynamic/b;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cax;->a:Lcom/google/android/gms/internal/ads/caw;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cax;->b:Landroid/net/Uri;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/cax;->c:Lcom/google/android/gms/dynamic/b;

    .line 1205
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/caw;->a(Landroid/net/Uri;Lcom/google/android/gms/dynamic/b;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
