.class final Lcom/google/android/gms/internal/ads/cs0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/ads/nonagon/signalgeneration/o;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/fs0;

.field private b:Lcom/google/android/gms/internal/ads/j21;

.field private c:Lcom/google/android/gms/ads/nonagon/signalgeneration/i0;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/fs0;Lcom/google/android/gms/internal/ads/wr0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cs0;->a:Lcom/google/android/gms/internal/ads/fs0;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lcom/google/android/gms/internal/ads/j21;)Lcom/google/android/gms/ads/nonagon/signalgeneration/o;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cs0;->b:Lcom/google/android/gms/internal/ads/j21;

    return-object p0
.end method

.method public final bridge synthetic b(Lcom/google/android/gms/ads/nonagon/signalgeneration/i0;)Lcom/google/android/gms/ads/nonagon/signalgeneration/o;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cs0;->c:Lcom/google/android/gms/ads/nonagon/signalgeneration/i0;

    return-object p0
.end method

.method public final zza()Lcom/google/android/gms/ads/nonagon/signalgeneration/p;
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cs0;->b:Lcom/google/android/gms/internal/ads/j21;

    const-class v1, Lcom/google/android/gms/internal/ads/j21;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/kj3;->c(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cs0;->c:Lcom/google/android/gms/ads/nonagon/signalgeneration/i0;

    const-class v1, Lcom/google/android/gms/ads/nonagon/signalgeneration/i0;

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/kj3;->c(Ljava/lang/Object;Ljava/lang/Class;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/ds0;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/cs0;->a:Lcom/google/android/gms/internal/ads/fs0;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/cs0;->c:Lcom/google/android/gms/ads/nonagon/signalgeneration/i0;

    new-instance v5, Lcom/google/android/gms/internal/ads/d01;

    invoke-direct {v5}, Lcom/google/android/gms/internal/ads/d01;-><init>()V

    new-instance v6, Lcom/google/android/gms/internal/ads/eo1;

    invoke-direct {v6}, Lcom/google/android/gms/internal/ads/eo1;-><init>()V

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/cs0;->b:Lcom/google/android/gms/internal/ads/j21;

    new-instance v8, Lcom/google/android/gms/internal/ads/zk2;

    invoke-direct {v8}, Lcom/google/android/gms/internal/ads/zk2;-><init>()V

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v2, v0

    .line 3
    invoke-direct/range {v2 .. v11}, Lcom/google/android/gms/internal/ads/ds0;-><init>(Lcom/google/android/gms/internal/ads/fs0;Lcom/google/android/gms/ads/nonagon/signalgeneration/i0;Lcom/google/android/gms/internal/ads/d01;Lcom/google/android/gms/internal/ads/eo1;Lcom/google/android/gms/internal/ads/j21;Lcom/google/android/gms/internal/ads/zk2;Lcom/google/android/gms/internal/ads/yg2;Lcom/google/android/gms/internal/ads/yf2;Lcom/google/android/gms/internal/ads/wr0;)V

    return-object v0
.end method
