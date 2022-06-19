.class final synthetic Lcom/google/android/gms/internal/ads/cgo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/cgl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/cgl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cgo;->a:Lcom/google/android/gms/internal/ads/cgl;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 10

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cgo;->a:Lcom/google/android/gms/internal/ads/cgl;

    .line 1007
    new-instance v9, Lcom/google/android/gms/internal/ads/cgm;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/cgl;->a:Landroid/content/Context;

    .line 1008
    invoke-static {v1}, Lcom/google/android/gms/common/d/c;->a(Landroid/content/Context;)Lcom/google/android/gms/common/d/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/common/d/b;->a()Z

    move-result v2

    .line 1009
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/ads/internal/util/zzj;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/cgl;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/zzj;->zzax(Landroid/content/Context;)Z

    move-result v3

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/cgl;->b:Lcom/google/android/gms/internal/ads/zzbar;

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzbar;->zzbrz:Ljava/lang/String;

    .line 1010
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkx()Lcom/google/android/gms/ads/internal/util/zzr;

    invoke-static {}, Lcom/google/android/gms/ads/internal/util/zzr;->zzzx()Z

    move-result v5

    .line 1011
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/ads/internal/util/zzj;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/cgl;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/zzj;->zzau(Landroid/content/Context;)I

    move-result v6

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/cgl;->a:Landroid/content/Context;

    const-string v7, "com.google.android.gms.ads.dynamite"

    .line 1012
    invoke-static {v1, v7}, Lcom/google/android/gms/dynamite/DynamiteModule;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v8

    .line 1013
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/cgl;->a:Landroid/content/Context;

    .line 1014
    invoke-static {v0, v7}, Lcom/google/android/gms/dynamite/DynamiteModule;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    move-object v1, v9

    move v7, v8

    move v8, v0

    .line 1015
    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/internal/ads/cgm;-><init>(ZZLjava/lang/String;ZIII)V

    return-object v9
.end method
