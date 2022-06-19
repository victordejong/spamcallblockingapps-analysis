.class final Lcom/google/android/gms/internal/ads/g53;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/a23;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/g23;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/g23<",
            "Lcom/google/android/gms/internal/ads/a23;",
            ">;"
        }
    .end annotation
.end field

.field private final b:[B


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/g23;Lcom/google/android/gms/internal/ads/e53;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/g23<",
            "Lcom/google/android/gms/internal/ads/a23;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x1

    new-array p2, p2, [B

    const/4 v0, 0x0

    aput-byte v0, p2, v0

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/g53;->b:[B

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/g53;->a:Lcom/google/android/gms/internal/ads/g23;

    return-void
.end method


# virtual methods
.method public final a([B)[B
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/g53;->a:Lcom/google/android/gms/internal/ads/g23;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/g23;->a()Lcom/google/android/gms/internal/ads/d23;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/d23;->d()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x4

    if-ne v0, v4, :cond_0

    new-array v0, v3, [[B

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/g53;->a:Lcom/google/android/gms/internal/ads/g23;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/g23;->a()Lcom/google/android/gms/internal/ads/d23;

    move-result-object v4

    .line 2
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/d23;->b()[B

    move-result-object v4

    aput-object v4, v0, v2

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/g53;->a:Lcom/google/android/gms/internal/ads/g23;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/g23;->a()Lcom/google/android/gms/internal/ads/d23;

    move-result-object v4

    .line 3
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/d23;->a()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/a23;

    new-array v3, v3, [[B

    aput-object p1, v3, v2

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/g53;->b:[B

    aput-object p1, v3, v1

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/za3;->a([[B)[B

    move-result-object p1

    invoke-interface {v4, p1}, Lcom/google/android/gms/internal/ads/a23;->a([B)[B

    move-result-object p1

    aput-object p1, v0, v1

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/za3;->a([[B)[B

    move-result-object p1

    return-object p1

    :cond_0
    new-array v0, v3, [[B

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/g53;->a:Lcom/google/android/gms/internal/ads/g23;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/g23;->a()Lcom/google/android/gms/internal/ads/d23;

    move-result-object v3

    .line 5
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/d23;->b()[B

    move-result-object v3

    aput-object v3, v0, v2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/g53;->a:Lcom/google/android/gms/internal/ads/g23;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/g23;->a()Lcom/google/android/gms/internal/ads/d23;

    move-result-object v2

    .line 6
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/d23;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/a23;

    invoke-interface {v2, p1}, Lcom/google/android/gms/internal/ads/a23;->a([B)[B

    move-result-object p1

    aput-object p1, v0, v1

    .line 7
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/za3;->a([[B)[B

    move-result-object p1

    return-object p1
.end method
