.class final Lcom/google/android/gms/internal/ads/wr;
.super Lcom/google/android/gms/internal/ads/vd;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field private final synthetic a:[B

.field private final synthetic b:Ljava/util/Map;

.field private final synthetic c:Lcom/google/android/gms/internal/ads/xv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/wq;ILjava/lang/String;Lcom/google/android/gms/internal/ads/ac;Lcom/google/android/gms/internal/ads/ebp;[BLjava/util/Map;Lcom/google/android/gms/internal/ads/xv;)V
    .locals 0

    .prologue
    .line 1
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/wr;->a:[B

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/wr;->b:Ljava/util/Map;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/wr;->c:Lcom/google/android/gms/internal/ads/xv;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/google/android/gms/internal/ads/vd;-><init>(ILjava/lang/String;Lcom/google/android/gms/internal/ads/ac;Lcom/google/android/gms/internal/ads/ebp;)V

    return-void
.end method


# virtual methods
.method protected final synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 7
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/vd;->a(Ljava/lang/String;)V

    return-void
.end method

.method protected final a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wr;->c:Lcom/google/android/gms/internal/ads/xv;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/xv;->a(Ljava/lang/String;)V

    .line 5
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/vd;->a(Ljava/lang/String;)V

    .line 6
    return-void
.end method

.method public final a()[B
    .locals 1

    .prologue
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wr;->a:[B

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/google/android/gms/internal/ads/vd;->a()[B

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wr;->a:[B

    goto :goto_0
.end method

.method public final b()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wr;->b:Ljava/util/Map;

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/google/android/gms/internal/ads/vd;->b()Ljava/util/Map;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wr;->b:Ljava/util/Map;

    goto :goto_0
.end method
