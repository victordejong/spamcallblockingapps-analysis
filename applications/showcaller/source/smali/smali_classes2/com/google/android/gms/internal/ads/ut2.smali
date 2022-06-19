.class public final Lcom/google/android/gms/internal/ads/ut2;
.super Lcom/google/android/gms/internal/ads/nt2;
.source "com.google.android.gms:play-services-ads-lite@@20.5.0"


# instance fields
.field private d:Lcom/google/android/gms/internal/ads/jv2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/jv2<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/google/android/gms/internal/ads/jv2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/jv2<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/google/android/gms/internal/ads/tt2;

.field private g:Ljava/net/HttpURLConnection;


# direct methods
.method constructor <init>()V
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/ads/pt2;->d:Lcom/google/android/gms/internal/ads/jv2;

    sget-object v1, Lcom/google/android/gms/internal/ads/qt2;->d:Lcom/google/android/gms/internal/ads/jv2;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/nt2;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ut2;->d:Lcom/google/android/gms/internal/ads/jv2;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/ut2;->e:Lcom/google/android/gms/internal/ads/jv2;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ut2;->f:Lcom/google/android/gms/internal/ads/tt2;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ut2;->g:Ljava/net/HttpURLConnection;

    invoke-static {}, Lcom/google/android/gms/internal/ads/ot2;->b()V

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_0
    return-void
.end method

.method public final e(Lcom/google/android/gms/internal/ads/tt2;II)Ljava/net/HttpURLConnection;
    .locals 0

    .line 1
    new-instance p2, Lcom/google/android/gms/internal/ads/rt2;

    const/16 p3, 0x109

    invoke-direct {p2, p3}, Lcom/google/android/gms/internal/ads/rt2;-><init>(I)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ut2;->d:Lcom/google/android/gms/internal/ads/jv2;

    new-instance p2, Lcom/google/android/gms/internal/ads/st2;

    const/4 p3, -0x1

    invoke-direct {p2, p3}, Lcom/google/android/gms/internal/ads/st2;-><init>(I)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ut2;->e:Lcom/google/android/gms/internal/ads/jv2;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ut2;->f:Lcom/google/android/gms/internal/ads/tt2;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ut2;->d:Lcom/google/android/gms/internal/ads/jv2;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/jv2;->zza()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/ut2;->e:Lcom/google/android/gms/internal/ads/jv2;

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/jv2;->zza()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/ot2;->a(II)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ut2;->f:Lcom/google/android/gms/internal/ads/tt2;

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/tt2;->zza()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ut2;->g:Ljava/net/HttpURLConnection;

    return-object p1
.end method
