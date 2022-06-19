.class public final Lcom/google/android/gms/internal/ads/djx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dcq;


# static fields
.field private static final a:[B


# instance fields
.field private final b:Lcom/google/android/gms/internal/ads/djz;

.field private final c:Ljava/lang/String;

.field private final d:[B

.field private final e:Lcom/google/android/gms/internal/ads/dkh;

.field private final f:Lcom/google/android/gms/internal/ads/djv;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 21
    sput-object v0, Lcom/google/android/gms/internal/ads/djx;->a:[B

    return-void
.end method

.method public constructor <init>(Ljava/security/interfaces/ECPublicKey;[BLjava/lang/String;Lcom/google/android/gms/internal/ads/dkh;Lcom/google/android/gms/internal/ads/djv;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-interface {p1}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v0

    invoke-interface {p1}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/dkb;->a(Ljava/security/spec/ECPoint;Ljava/security/spec/EllipticCurve;)V

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/djz;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/djz;-><init>(Ljava/security/interfaces/ECPublicKey;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/djx;->b:Lcom/google/android/gms/internal/ads/djz;

    .line 5
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/djx;->d:[B

    .line 6
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/djx;->c:Ljava/lang/String;

    .line 7
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/djx;->e:Lcom/google/android/gms/internal/ads/dkh;

    .line 8
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/djx;->f:Lcom/google/android/gms/internal/ads/djv;

    return-void
.end method


# virtual methods
.method public final a([B[B)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/djx;->b:Lcom/google/android/gms/internal/ads/djz;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/djx;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/djx;->d:[B

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/djx;->f:Lcom/google/android/gms/internal/ads/djv;

    .line 11
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/djv;->a()I

    move-result v4

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/djx;->e:Lcom/google/android/gms/internal/ads/dkh;

    move-object v3, p2

    .line 12
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/djz;->a(Ljava/lang/String;[B[BILcom/google/android/gms/internal/ads/dkh;)Lcom/google/android/gms/internal/ads/dkc;

    move-result-object p2

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/djx;->f:Lcom/google/android/gms/internal/ads/djv;

    .line 1008
    iget-object v1, p2, Lcom/google/android/gms/internal/ads/dkc;->b:Lcom/google/android/gms/internal/ads/dkq;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    .line 1010
    :cond_0
    iget-object v1, p2, Lcom/google/android/gms/internal/ads/dkc;->b:Lcom/google/android/gms/internal/ads/dkq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/dkq;->a()[B

    move-result-object v1

    .line 13
    :goto_0
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/djv;->a([B)Lcom/google/android/gms/internal/ads/dcn;

    move-result-object v0

    .line 14
    sget-object v1, Lcom/google/android/gms/internal/ads/djx;->a:[B

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/ads/dcn;->a([B[B)[B

    move-result-object p1

    .line 2005
    iget-object v0, p2, Lcom/google/android/gms/internal/ads/dkc;->a:Lcom/google/android/gms/internal/ads/dkq;

    if-nez v0, :cond_1

    goto :goto_1

    .line 2007
    :cond_1
    iget-object p2, p2, Lcom/google/android/gms/internal/ads/dkc;->a:Lcom/google/android/gms/internal/ads/dkq;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/dkq;->a()[B

    move-result-object v2

    .line 16
    :goto_1
    array-length p2, v2

    array-length v0, p1

    add-int/2addr p2, v0

    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 17
    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 18
    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 19
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    return-object p1
.end method
