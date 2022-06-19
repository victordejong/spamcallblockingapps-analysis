.class final Lcom/google/android/gms/internal/ads/qx;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/ads/x/a/b;


# instance fields
.field private a:Lcom/google/android/gms/internal/ads/d70;

.field private b:Lcom/google/android/gms/ads/x/a/x;

.field final synthetic c:Lcom/google/android/gms/internal/ads/sx;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/sx;Lcom/google/android/gms/internal/ads/gw;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/qx;->c:Lcom/google/android/gms/internal/ads/sx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic c(Lcom/google/android/gms/internal/ads/d70;)Lcom/google/android/gms/ads/x/a/b;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/qx;->a:Lcom/google/android/gms/internal/ads/d70;

    return-object p0
.end method

.method public final bridge synthetic d(Lcom/google/android/gms/ads/x/a/x;)Lcom/google/android/gms/ads/x/a/b;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/qx;->b:Lcom/google/android/gms/ads/x/a/x;

    return-object p0
.end method

.method public final zza()Lcom/google/android/gms/ads/x/a/f;
    .locals 12

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qx;->a:Lcom/google/android/gms/internal/ads/d70;

    const-class v1, Lcom/google/android/gms/internal/ads/d70;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/jh2;->c(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qx;->b:Lcom/google/android/gms/ads/x/a/x;

    const-class v1, Lcom/google/android/gms/ads/x/a/x;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/jh2;->c(Ljava/lang/Object;Ljava/lang/Class;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/rx;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/qx;->c:Lcom/google/android/gms/internal/ads/sx;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/qx;->b:Lcom/google/android/gms/ads/x/a/x;

    new-instance v5, Lcom/google/android/gms/internal/ads/a50;

    invoke-direct {v5}, Lcom/google/android/gms/internal/ads/a50;-><init>()V

    new-instance v6, Lcom/google/android/gms/internal/ads/wr0;

    invoke-direct {v6}, Lcom/google/android/gms/internal/ads/wr0;-><init>()V

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/qx;->a:Lcom/google/android/gms/internal/ads/d70;

    new-instance v8, Lcom/google/android/gms/internal/ads/um1;

    invoke-direct {v8}, Lcom/google/android/gms/internal/ads/um1;-><init>()V

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v11}, Lcom/google/android/gms/internal/ads/rx;-><init>(Lcom/google/android/gms/internal/ads/sx;Lcom/google/android/gms/ads/x/a/x;Lcom/google/android/gms/internal/ads/a50;Lcom/google/android/gms/internal/ads/wr0;Lcom/google/android/gms/internal/ads/d70;Lcom/google/android/gms/internal/ads/um1;Lcom/google/android/gms/internal/ads/wi1;Lcom/google/android/gms/internal/ads/xh1;Lcom/google/android/gms/internal/ads/gw;)V

    return-object v0
.end method
