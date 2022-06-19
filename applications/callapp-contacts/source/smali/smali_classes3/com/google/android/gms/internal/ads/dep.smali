.class public final Lcom/google/android/gms/internal/ads/dep;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dcn;


# static fields
.field private static final a:[B


# instance fields
.field private final b:Lcom/google/android/gms/internal/ads/dik;

.field private final c:Lcom/google/android/gms/internal/ads/dcn;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 16
    sput-object v0, Lcom/google/android/gms/internal/ads/dep;->a:[B

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/dik;Lcom/google/android/gms/internal/ads/dcn;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dep;->b:Lcom/google/android/gms/internal/ads/dik;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/dep;->c:Lcom/google/android/gms/internal/ads/dcn;

    return-void
.end method


# virtual methods
.method public final a([B[B)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dep;->b:Lcom/google/android/gms/internal/ads/dik;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ddm;->b(Lcom/google/android/gms/internal/ads/dik;)Lcom/google/android/gms/internal/ads/dot;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dot;->g()[B

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dep;->c:Lcom/google/android/gms/internal/ads/dcn;

    sget-object v2, Lcom/google/android/gms/internal/ads/dep;->a:[B

    invoke-interface {v1, v0, v2}, Lcom/google/android/gms/internal/ads/dcn;->a([B[B)[B

    move-result-object v1

    .line 7
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dep;->b:Lcom/google/android/gms/internal/ads/dik;

    .line 1005
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/dik;->zzijv:Ljava/lang/String;

    .line 7
    const-class v3, Lcom/google/android/gms/internal/ads/dcn;

    invoke-static {v2, v0, v3}, Lcom/google/android/gms/internal/ads/ddm;->a(Ljava/lang/String;[BLjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dcn;

    .line 8
    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/dcn;->a([B[B)[B

    move-result-object p1

    .line 10
    array-length p2, v1

    add-int/lit8 p2, p2, 0x4

    array-length v0, p1

    add-int/2addr p2, v0

    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    array-length v0, v1

    .line 11
    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 12
    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 13
    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 14
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    return-object p1
.end method
