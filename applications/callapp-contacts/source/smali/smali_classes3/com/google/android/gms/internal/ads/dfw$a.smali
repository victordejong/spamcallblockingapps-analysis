.class final Lcom/google/android/gms/internal/ads/dfw$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/ddb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/dfw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/ddd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/ddd<",
            "Lcom/google/android/gms/internal/ads/ddb;",
            ">;"
        }
    .end annotation
.end field

.field private final b:[B


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/ddd;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/ddd<",
            "Lcom/google/android/gms/internal/ads/ddb;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte v1, v0, v1

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dfw$a;->b:[B

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dfw$a;->a:Lcom/google/android/gms/internal/ads/ddd;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/ddd;Lcom/google/android/gms/internal/ads/dfv;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/dfw$a;-><init>(Lcom/google/android/gms/internal/ads/ddd;)V

    return-void
.end method


# virtual methods
.method public final a([B)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dfw$a;->a:Lcom/google/android/gms/internal/ads/ddd;

    .line 1001
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/ddd;->b:Lcom/google/android/gms/internal/ads/ddf;

    .line 1010
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/ddf;->c:Lcom/google/android/gms/internal/ads/djb;

    .line 5
    sget-object v1, Lcom/google/android/gms/internal/ads/djb;->zzilo:Lcom/google/android/gms/internal/ads/djb;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/djb;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_0

    new-array v0, v3, [[B

    .line 6
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/dfw$a;->a:Lcom/google/android/gms/internal/ads/ddd;

    .line 2001
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/ddd;->b:Lcom/google/android/gms/internal/ads/ddf;

    .line 7
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/ddf;->a()[B

    move-result-object v4

    aput-object v4, v0, v2

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/dfw$a;->a:Lcom/google/android/gms/internal/ads/ddd;

    .line 3001
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/ddd;->b:Lcom/google/android/gms/internal/ads/ddf;

    .line 3008
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/ddf;->a:Ljava/lang/Object;

    .line 8
    check-cast v4, Lcom/google/android/gms/internal/ads/ddb;

    new-array v3, v3, [[B

    aput-object p1, v3, v2

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/dfw$a;->b:[B

    aput-object p1, v3, v1

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/djs;->a([[B)[B

    move-result-object p1

    invoke-interface {v4, p1}, Lcom/google/android/gms/internal/ads/ddb;->a([B)[B

    move-result-object p1

    aput-object p1, v0, v1

    .line 9
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/djs;->a([[B)[B

    move-result-object p1

    return-object p1

    :cond_0
    new-array v0, v3, [[B

    .line 10
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/dfw$a;->a:Lcom/google/android/gms/internal/ads/ddd;

    .line 4001
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/ddd;->b:Lcom/google/android/gms/internal/ads/ddf;

    .line 11
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/ddf;->a()[B

    move-result-object v3

    aput-object v3, v0, v2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dfw$a;->a:Lcom/google/android/gms/internal/ads/ddd;

    .line 5001
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/ddd;->b:Lcom/google/android/gms/internal/ads/ddf;

    .line 5008
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/ddf;->a:Ljava/lang/Object;

    .line 12
    check-cast v2, Lcom/google/android/gms/internal/ads/ddb;

    invoke-interface {v2, p1}, Lcom/google/android/gms/internal/ads/ddb;->a([B)[B

    move-result-object p1

    aput-object p1, v0, v1

    .line 13
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/djs;->a([[B)[B

    move-result-object p1

    return-object p1
.end method
