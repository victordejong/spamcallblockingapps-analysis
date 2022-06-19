.class final synthetic Lcom/google/android/gms/internal/ads/bnx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/cqt;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/bnu;

.field private final b:Landroid/net/Uri;

.field private final c:Lcom/google/android/gms/internal/ads/chd;

.field private final d:Lcom/google/android/gms/internal/ads/cgr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bnu;Landroid/net/Uri;Lcom/google/android/gms/internal/ads/chd;Lcom/google/android/gms/internal/ads/cgr;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bnx;->a:Lcom/google/android/gms/internal/ads/bnu;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bnx;->b:Landroid/net/Uri;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bnx;->c:Lcom/google/android/gms/internal/ads/chd;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/bnx;->d:Lcom/google/android/gms/internal/ads/cgr;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/crt;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bnx;->a:Lcom/google/android/gms/internal/ads/bnu;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bnx;->b:Landroid/net/Uri;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bnx;->c:Lcom/google/android/gms/internal/ads/chd;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/bnx;->d:Lcom/google/android/gms/internal/ads/cgr;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/google/android/gms/internal/ads/bnu;->a(Landroid/net/Uri;Lcom/google/android/gms/internal/ads/chd;Lcom/google/android/gms/internal/ads/cgr;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    return-object v0
.end method
