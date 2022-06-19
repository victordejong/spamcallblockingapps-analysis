.class public final Lcom/google/android/gms/internal/ads/zzeht;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeat;


# static fields
.field private static final zzidb:[B


# instance fields
.field private final zziji:Lcom/google/android/gms/internal/ads/zzehv;

.field private final zzijj:Ljava/lang/String;

.field private final zzijk:[B

.field private final zzijl:Lcom/google/android/gms/internal/ads/zzeic;

.field private final zzijm:Lcom/google/android/gms/internal/ads/zzehr;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/google/android/gms/internal/ads/zzeht;->zzidb:[B

    return-void
.end method

.method public constructor <init>(Ljava/security/interfaces/ECPublicKey;[BLjava/lang/String;Lcom/google/android/gms/internal/ads/zzeic;Lcom/google/android/gms/internal/ads/zzehr;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v0

    invoke-interface {p1}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzehx;->zza(Ljava/security/spec/ECPoint;Ljava/security/spec/EllipticCurve;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzehv;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzehv;-><init>(Ljava/security/interfaces/ECPublicKey;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzeht;->zziji:Lcom/google/android/gms/internal/ads/zzehv;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeht;->zzijk:[B

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzeht;->zzijj:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzeht;->zzijl:Lcom/google/android/gms/internal/ads/zzeic;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzeht;->zzijm:Lcom/google/android/gms/internal/ads/zzehr;

    return-void
.end method


# virtual methods
.method public final zzc([B[B)[B
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeht;->zziji:Lcom/google/android/gms/internal/ads/zzehv;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeht;->zzijj:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzeht;->zzijk:[B

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzeht;->zzijm:Lcom/google/android/gms/internal/ads/zzehr;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzehr;->zzbbd()I

    move-result v4

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzeht;->zzijl:Lcom/google/android/gms/internal/ads/zzeic;

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzehv;->zza(Ljava/lang/String;[B[BILcom/google/android/gms/internal/ads/zzeic;)Lcom/google/android/gms/internal/ads/zzehy;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeht;->zzijm:Lcom/google/android/gms/internal/ads/zzehr;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzehy;->zzbfr()[B

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzehr;->zzm([B)Lcom/google/android/gms/internal/ads/zzeaq;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzeht;->zzidb:[B

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzeaq;->zzc([B[B)[B

    move-result-object p1

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzehy;->zzbfq()[B

    move-result-object p2

    array-length v0, p2

    array-length v1, p1

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    return-object p1
.end method
