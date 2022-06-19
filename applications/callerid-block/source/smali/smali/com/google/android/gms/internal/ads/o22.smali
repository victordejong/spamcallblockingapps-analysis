.class public final Lcom/google/android/gms/internal/ads/o22;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/i02;


# static fields
.field private static final c:[B


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/t72;

.field private final b:Lcom/google/android/gms/internal/ads/i02;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/google/android/gms/internal/ads/o22;->c:[B

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/t72;Lcom/google/android/gms/internal/ads/i02;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/o22;->a:Lcom/google/android/gms/internal/ads/t72;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/o22;->b:Lcom/google/android/gms/internal/ads/i02;

    return-void
.end method


# virtual methods
.method public final a([B[B)[B
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/o22;->a:Lcom/google/android/gms/internal/ads/t72;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/m12;->h(Lcom/google/android/gms/internal/ads/t72;)Lcom/google/android/gms/internal/ads/qd2;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/qd2;->A()[B

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/o22;->b:Lcom/google/android/gms/internal/ads/i02;

    sget-object v2, Lcom/google/android/gms/internal/ads/o22;->c:[B

    invoke-interface {v1, v0, v2}, Lcom/google/android/gms/internal/ads/i02;->a([B[B)[B

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/o22;->a:Lcom/google/android/gms/internal/ads/t72;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/t72;->E()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/google/android/gms/internal/ads/i02;

    invoke-static {v2, v0, v3}, Lcom/google/android/gms/internal/ads/m12;->j(Ljava/lang/String;[BLjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/i02;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/i02;->a([B[B)[B

    move-result-object p1

    array-length p2, v1

    add-int/lit8 v0, p2, 0x4

    array-length v2, p1

    add-int/2addr v0, v2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    return-object p1
.end method
