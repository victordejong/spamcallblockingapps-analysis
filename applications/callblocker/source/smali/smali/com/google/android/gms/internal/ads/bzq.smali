.class public final Lcom/google/android/gms/internal/ads/bzq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/cah;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/cah",
        "<",
        "Lcom/google/android/gms/internal/ads/bzr;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/crs;

.field private final b:Landroid/content/Context;

.field private final c:Lcom/google/android/gms/internal/ads/yd;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/crs;Landroid/content/Context;Lcom/google/android/gms/internal/ads/yd;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bzq;->a:Lcom/google/android/gms/internal/ads/crs;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bzq;->b:Landroid/content/Context;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bzq;->c:Lcom/google/android/gms/internal/ads/yd;

    .line 5
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/crt;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/crt",
            "<",
            "Lcom/google/android/gms/internal/ads/bzr;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bzq;->a:Lcom/google/android/gms/internal/ads/crs;

    new-instance v1, Lcom/google/android/gms/internal/ads/bzt;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/bzt;-><init>(Lcom/google/android/gms/internal/ads/bzq;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/crs;->a(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    return-object v0
.end method

.method final synthetic b()Lcom/google/android/gms/internal/ads/bzr;
    .locals 9

    .prologue
    .line 7
    new-instance v0, Lcom/google/android/gms/internal/ads/bzr;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bzq;->b:Landroid/content/Context;

    .line 8
    invoke-static {v1}, Lcom/google/android/gms/common/c/c;->a(Landroid/content/Context;)Lcom/google/android/gms/common/c/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/common/c/b;->a()Z

    move-result v1

    .line 9
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->c()Lcom/google/android/gms/internal/ads/ve;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bzq;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/ve;->j(Landroid/content/Context;)Z

    move-result v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/bzq;->c:Lcom/google/android/gms/internal/ads/yd;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/yd;->a:Ljava/lang/String;

    .line 10
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->e()Lcom/google/android/gms/internal/ads/vj;

    invoke-static {}, Lcom/google/android/gms/internal/ads/vj;->c()Z

    move-result v4

    .line 11
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->c()Lcom/google/android/gms/internal/ads/ve;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/bzq;->b:Landroid/content/Context;

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/ve;->h(Landroid/content/Context;)I

    move-result v5

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/bzq;->b:Landroid/content/Context;

    .line 12
    const-string/jumbo v7, "com.google.android.gms.ads.dynamite"

    invoke-static {v6, v7}, Lcom/google/android/gms/dynamite/DynamiteModule;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    .line 13
    iget-object v7, p0, Lcom/google/android/gms/internal/ads/bzq;->b:Landroid/content/Context;

    .line 14
    const-string/jumbo v8, "com.google.android.gms.ads.dynamite"

    invoke-static {v7, v8}, Lcom/google/android/gms/dynamite/DynamiteModule;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    .line 15
    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/bzr;-><init>(ZZLjava/lang/String;ZIII)V

    .line 16
    return-object v0
.end method
