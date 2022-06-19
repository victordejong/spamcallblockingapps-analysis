.class final Lcom/google/android/gms/internal/ads/tq0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/ed1;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/fs0;

.field private b:Lcom/google/android/gms/internal/ads/p81;

.field private c:Lcom/google/android/gms/internal/ads/j21;

.field private d:Lcom/google/android/gms/internal/ads/zc1;

.field private e:Lcom/google/android/gms/internal/ads/uw0;

.field private f:Lcom/google/android/gms/internal/ads/yg2;

.field private g:Lcom/google/android/gms/internal/ads/yf2;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/fs0;Lcom/google/android/gms/internal/ads/wr0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/tq0;->a:Lcom/google/android/gms/internal/ads/fs0;

    return-void
.end method


# virtual methods
.method public final bridge synthetic d()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/tq0;->zza()Lcom/google/android/gms/internal/ads/fd1;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic e(Lcom/google/android/gms/internal/ads/uw0;)Lcom/google/android/gms/internal/ads/ed1;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/tq0;->e:Lcom/google/android/gms/internal/ads/uw0;

    return-object p0
.end method

.method public final bridge synthetic f(Lcom/google/android/gms/internal/ads/zc1;)Lcom/google/android/gms/internal/ads/ed1;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/tq0;->d:Lcom/google/android/gms/internal/ads/zc1;

    return-object p0
.end method

.method public final bridge synthetic j(Lcom/google/android/gms/internal/ads/p81;)Lcom/google/android/gms/internal/ads/ed1;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/tq0;->b:Lcom/google/android/gms/internal/ads/p81;

    return-object p0
.end method

.method public final bridge synthetic k(Lcom/google/android/gms/internal/ads/j21;)Lcom/google/android/gms/internal/ads/ed1;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/tq0;->c:Lcom/google/android/gms/internal/ads/j21;

    return-object p0
.end method

.method public final bridge synthetic n(Lcom/google/android/gms/internal/ads/yf2;)Lcom/google/android/gms/internal/ads/f21;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/tq0;->g:Lcom/google/android/gms/internal/ads/yf2;

    return-object p0
.end method

.method public final bridge synthetic s(Lcom/google/android/gms/internal/ads/yg2;)Lcom/google/android/gms/internal/ads/f21;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/tq0;->f:Lcom/google/android/gms/internal/ads/yg2;

    return-object p0
.end method

.method public final zza()Lcom/google/android/gms/internal/ads/fd1;
    .locals 18

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/tq0;->b:Lcom/google/android/gms/internal/ads/p81;

    const-class v2, Lcom/google/android/gms/internal/ads/p81;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/kj3;->c(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/tq0;->c:Lcom/google/android/gms/internal/ads/j21;

    const-class v2, Lcom/google/android/gms/internal/ads/j21;

    .line 2
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/kj3;->c(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/tq0;->d:Lcom/google/android/gms/internal/ads/zc1;

    const-class v2, Lcom/google/android/gms/internal/ads/zc1;

    .line 3
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/kj3;->c(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/tq0;->e:Lcom/google/android/gms/internal/ads/uw0;

    const-class v2, Lcom/google/android/gms/internal/ads/uw0;

    .line 4
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/kj3;->c(Ljava/lang/Object;Ljava/lang/Class;)V

    new-instance v1, Lcom/google/android/gms/internal/ads/uq0;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/tq0;->a:Lcom/google/android/gms/internal/ads/fs0;

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/tq0;->e:Lcom/google/android/gms/internal/ads/uw0;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/tq0;->d:Lcom/google/android/gms/internal/ads/zc1;

    new-instance v7, Lcom/google/android/gms/internal/ads/d01;

    invoke-direct {v7}, Lcom/google/android/gms/internal/ads/d01;-><init>()V

    new-instance v8, Lcom/google/android/gms/internal/ads/vk2;

    invoke-direct {v8}, Lcom/google/android/gms/internal/ads/vk2;-><init>()V

    new-instance v9, Lcom/google/android/gms/internal/ads/p11;

    invoke-direct {v9}, Lcom/google/android/gms/internal/ads/p11;-><init>()V

    new-instance v10, Lcom/google/android/gms/internal/ads/eo1;

    invoke-direct {v10}, Lcom/google/android/gms/internal/ads/eo1;-><init>()V

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/tq0;->b:Lcom/google/android/gms/internal/ads/p81;

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/tq0;->c:Lcom/google/android/gms/internal/ads/j21;

    new-instance v13, Lcom/google/android/gms/internal/ads/zk2;

    invoke-direct {v13}, Lcom/google/android/gms/internal/ads/zk2;-><init>()V

    iget-object v15, v0, Lcom/google/android/gms/internal/ads/tq0;->f:Lcom/google/android/gms/internal/ads/yg2;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/tq0;->g:Lcom/google/android/gms/internal/ads/yf2;

    const/4 v14, 0x0

    const/16 v17, 0x0

    move-object v3, v1

    move-object/from16 v16, v2

    .line 5
    invoke-direct/range {v3 .. v17}, Lcom/google/android/gms/internal/ads/uq0;-><init>(Lcom/google/android/gms/internal/ads/fs0;Lcom/google/android/gms/internal/ads/uw0;Lcom/google/android/gms/internal/ads/zc1;Lcom/google/android/gms/internal/ads/d01;Lcom/google/android/gms/internal/ads/vk2;Lcom/google/android/gms/internal/ads/p11;Lcom/google/android/gms/internal/ads/eo1;Lcom/google/android/gms/internal/ads/p81;Lcom/google/android/gms/internal/ads/j21;Lcom/google/android/gms/internal/ads/zk2;Lcom/google/android/gms/internal/ads/rj2;Lcom/google/android/gms/internal/ads/yg2;Lcom/google/android/gms/internal/ads/yf2;Lcom/google/android/gms/internal/ads/wr0;)V

    return-object v1
.end method
