.class public final Lcom/google/android/gms/internal/ads/cuk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/csm;


# static fields
.field private static final a:[B


# instance fields
.field private final b:Lcom/google/android/gms/internal/ads/cya;

.field private final c:Lcom/google/android/gms/internal/ads/csm;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/google/android/gms/internal/ads/cuk;->a:[B

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/cya;Lcom/google/android/gms/internal/ads/csm;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cuk;->b:Lcom/google/android/gms/internal/ads/cya;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/cuk;->c:Lcom/google/android/gms/internal/ads/csm;

    .line 4
    return-void
.end method


# virtual methods
.method public final a([B[B)[B
    .locals 4

    .prologue
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cuk;->b:Lcom/google/android/gms/internal/ads/cya;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/cti;->b(Lcom/google/android/gms/internal/ads/cya;)Lcom/google/android/gms/internal/ads/deg;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/deg;->l()[B

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cuk;->c:Lcom/google/android/gms/internal/ads/csm;

    sget-object v2, Lcom/google/android/gms/internal/ads/cuk;->a:[B

    invoke-interface {v1, v0, v2}, Lcom/google/android/gms/internal/ads/csm;->a([B[B)[B

    move-result-object v1

    .line 7
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/cuk;->b:Lcom/google/android/gms/internal/ads/cya;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/cya;->a()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/google/android/gms/internal/ads/csm;

    invoke-static {v2, v0, v3}, Lcom/google/android/gms/internal/ads/cti;->a(Ljava/lang/String;[BLjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/csm;

    .line 8
    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/csm;->a([B[B)[B

    move-result-object v0

    .line 10
    array-length v2, v1

    add-int/lit8 v2, v2, 0x4

    array-length v3, v0

    add-int/2addr v2, v3

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    array-length v3, v1

    .line 11
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 12
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 13
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 14
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 15
    return-object v0
.end method
