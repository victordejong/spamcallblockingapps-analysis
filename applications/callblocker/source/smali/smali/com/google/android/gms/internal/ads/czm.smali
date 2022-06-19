.class public final Lcom/google/android/gms/internal/ads/czm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/cst;


# static fields
.field private static final a:[B


# instance fields
.field private final b:Lcom/google/android/gms/internal/ads/czo;

.field private final c:Ljava/lang/String;

.field private final d:[B

.field private final e:Lcom/google/android/gms/internal/ads/czw;

.field private final f:Lcom/google/android/gms/internal/ads/czk;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/google/android/gms/internal/ads/czm;->a:[B

    return-void
.end method

.method public constructor <init>(Ljava/security/interfaces/ECPublicKey;[BLjava/lang/String;Lcom/google/android/gms/internal/ads/czw;Lcom/google/android/gms/internal/ads/czk;)V
    .locals 2

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-interface {p1}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v0

    invoke-interface {p1}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/czr;->a(Ljava/security/spec/ECPoint;Ljava/security/spec/EllipticCurve;)V

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/czo;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/czo;-><init>(Ljava/security/interfaces/ECPublicKey;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/czm;->b:Lcom/google/android/gms/internal/ads/czo;

    .line 5
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/czm;->d:[B

    .line 6
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/czm;->c:Ljava/lang/String;

    .line 7
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/czm;->e:Lcom/google/android/gms/internal/ads/czw;

    .line 8
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/czm;->f:Lcom/google/android/gms/internal/ads/czk;

    .line 9
    return-void
.end method


# virtual methods
.method public final a([B[B)[B
    .locals 6

    .prologue
    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/czm;->b:Lcom/google/android/gms/internal/ads/czo;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/czm;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/czm;->d:[B

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/czm;->f:Lcom/google/android/gms/internal/ads/czk;

    .line 11
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/czk;->a()I

    move-result v4

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/czm;->e:Lcom/google/android/gms/internal/ads/czw;

    move-object v3, p2

    .line 12
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/czo;->a(Ljava/lang/String;[B[BILcom/google/android/gms/internal/ads/czw;)Lcom/google/android/gms/internal/ads/czs;

    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/czm;->f:Lcom/google/android/gms/internal/ads/czk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/czs;->b()[B

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/czk;->a([B)Lcom/google/android/gms/internal/ads/csm;

    move-result-object v1

    .line 14
    sget-object v2, Lcom/google/android/gms/internal/ads/czm;->a:[B

    invoke-interface {v1, p1, v2}, Lcom/google/android/gms/internal/ads/csm;->a([B[B)[B

    move-result-object v1

    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/czs;->a()[B

    move-result-object v0

    .line 16
    array-length v2, v0

    array-length v3, v1

    add-int/2addr v2, v3

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 17
    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 18
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 19
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 20
    return-object v0
.end method
