.class final Lcom/google/android/gms/internal/ads/hr0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/of2;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/fs0;

.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private d:Lcom/google/android/gms/internal/ads/zzbdl;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/fs0;Lcom/google/android/gms/internal/ads/wr0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/hr0;->a:Lcom/google/android/gms/internal/ads/fs0;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lcom/google/android/gms/internal/ads/zzbdl;)Lcom/google/android/gms/internal/ads/of2;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/hr0;->d:Lcom/google/android/gms/internal/ads/zzbdl;

    return-object p0
.end method

.method public final bridge synthetic b(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/of2;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/hr0;->b:Landroid/content/Context;

    return-object p0
.end method

.method public final bridge synthetic y(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/of2;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/hr0;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final zza()Lcom/google/android/gms/internal/ads/pf2;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hr0;->b:Landroid/content/Context;

    const-class v1, Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/kj3;->c(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hr0;->c:Ljava/lang/String;

    const-class v1, Ljava/lang/String;

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/kj3;->c(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hr0;->d:Lcom/google/android/gms/internal/ads/zzbdl;

    const-class v1, Lcom/google/android/gms/internal/ads/zzbdl;

    .line 3
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/kj3;->c(Ljava/lang/Object;Ljava/lang/Class;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/ir0;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/hr0;->a:Lcom/google/android/gms/internal/ads/fs0;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/hr0;->b:Landroid/content/Context;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/hr0;->c:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/hr0;->d:Lcom/google/android/gms/internal/ads/zzbdl;

    const/4 v7, 0x0

    move-object v2, v0

    .line 4
    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/ir0;-><init>(Lcom/google/android/gms/internal/ads/fs0;Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbdl;Lcom/google/android/gms/internal/ads/wr0;)V

    return-object v0
.end method
