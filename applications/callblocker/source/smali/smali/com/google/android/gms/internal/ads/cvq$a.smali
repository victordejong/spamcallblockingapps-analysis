.class final Lcom/google/android/gms/internal/ads/cvq$a;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/ctd;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/cvq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/ctf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/ctf",
            "<",
            "Lcom/google/android/gms/internal/ads/ctd;",
            ">;"
        }
    .end annotation
.end field

.field private final b:[B


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/ctf;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/ctf",
            "<",
            "Lcom/google/android/gms/internal/ads/ctd;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x1

    new-array v0, v0, [B

    aput-byte v1, v0, v1

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cvq$a;->b:[B

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cvq$a;->a:Lcom/google/android/gms/internal/ads/ctf;

    .line 4
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/ctf;Lcom/google/android/gms/internal/ads/cvp;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/cvq$a;-><init>(Lcom/google/android/gms/internal/ads/ctf;)V

    return-void
.end method


# virtual methods
.method public final a([B)[B
    .locals 5

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cvq$a;->a:Lcom/google/android/gms/internal/ads/ctf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ctf;->a()Lcom/google/android/gms/internal/ads/cte;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cte;->c()Lcom/google/android/gms/internal/ads/cyq;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/cyq;->c:Lcom/google/android/gms/internal/ads/cyq;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/cyq;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    new-array v1, v2, [[B

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cvq$a;->a:Lcom/google/android/gms/internal/ads/ctf;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ctf;->a()Lcom/google/android/gms/internal/ads/cte;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cte;->d()[B

    move-result-object v0

    aput-object v0, v1, v3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cvq$a;->a:Lcom/google/android/gms/internal/ads/ctf;

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ctf;->a()Lcom/google/android/gms/internal/ads/cte;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cte;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/ctd;

    new-array v2, v2, [[B

    aput-object p1, v2, v3

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/cvq$a;->b:[B

    aput-object v3, v2, v4

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/czh;->a([[B)[B

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/ctd;->a([B)[B

    move-result-object v0

    aput-object v0, v1, v4

    .line 9
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/czh;->a([[B)[B

    move-result-object v0

    .line 13
    :goto_0
    return-object v0

    .line 10
    :cond_0
    new-array v1, v2, [[B

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cvq$a;->a:Lcom/google/android/gms/internal/ads/ctf;

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ctf;->a()Lcom/google/android/gms/internal/ads/cte;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cte;->d()[B

    move-result-object v0

    aput-object v0, v1, v3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cvq$a;->a:Lcom/google/android/gms/internal/ads/ctf;

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ctf;->a()Lcom/google/android/gms/internal/ads/cte;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cte;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/ctd;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/ctd;->a([B)[B

    move-result-object v0

    aput-object v0, v1, v4

    .line 13
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/czh;->a([[B)[B

    move-result-object v0

    goto :goto_0
.end method
