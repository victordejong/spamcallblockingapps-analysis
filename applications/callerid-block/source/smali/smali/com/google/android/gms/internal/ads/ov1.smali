.class public final Lcom/google/android/gms/internal/ads/ov1;
.super Lcom/google/android/gms/internal/ads/hv1;
.source ""


# instance fields
.field private b:Lcom/google/android/gms/internal/ads/uw1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/uw1<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/google/android/gms/internal/ads/uw1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/uw1<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/google/android/gms/internal/ads/nv1;

.field private e:Ljava/net/HttpURLConnection;


# direct methods
.method constructor <init>()V
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/ads/jv1;->a:Lcom/google/android/gms/internal/ads/uw1;

    sget-object v1, Lcom/google/android/gms/internal/ads/kv1;->a:Lcom/google/android/gms/internal/ads/uw1;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/hv1;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ov1;->b:Lcom/google/android/gms/internal/ads/uw1;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/ov1;->c:Lcom/google/android/gms/internal/ads/uw1;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ov1;->d:Lcom/google/android/gms/internal/ads/nv1;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ov1;->e:Ljava/net/HttpURLConnection;

    invoke-static {}, Lcom/google/android/gms/internal/ads/iv1;->b()V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_0
    return-void
.end method

.method public final p(Lcom/google/android/gms/internal/ads/nv1;II)Ljava/net/HttpURLConnection;
    .locals 1

    new-instance p2, Lcom/google/android/gms/internal/ads/lv1;

    const/16 p3, 0x109

    invoke-direct {p2, p3}, Lcom/google/android/gms/internal/ads/lv1;-><init>(I)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ov1;->b:Lcom/google/android/gms/internal/ads/uw1;

    new-instance p3, Lcom/google/android/gms/internal/ads/mv1;

    const/4 v0, -0x1

    invoke-direct {p3, v0}, Lcom/google/android/gms/internal/ads/mv1;-><init>(I)V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/ov1;->c:Lcom/google/android/gms/internal/ads/uw1;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ov1;->d:Lcom/google/android/gms/internal/ads/nv1;

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/uw1;->zza()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/ov1;->c:Lcom/google/android/gms/internal/ads/uw1;

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/uw1;->zza()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/iv1;->a(II)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ov1;->d:Lcom/google/android/gms/internal/ads/nv1;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/nv1;->zza()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ov1;->e:Ljava/net/HttpURLConnection;

    return-object p1
.end method
