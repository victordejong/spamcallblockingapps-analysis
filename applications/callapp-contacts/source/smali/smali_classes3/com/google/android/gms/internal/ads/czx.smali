.class final Lcom/google/android/gms/internal/ads/czx;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Ljava/nio/ByteBuffer;

.field final b:J

.field final c:J

.field final d:J

.field final e:Ljava/nio/ByteBuffer;


# direct methods
.method private constructor <init>(Ljava/nio/ByteBuffer;JJJLjava/nio/ByteBuffer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/czx;->a:Ljava/nio/ByteBuffer;

    .line 3
    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/czx;->b:J

    .line 4
    iput-wide p4, p0, Lcom/google/android/gms/internal/ads/czx;->c:J

    .line 5
    iput-wide p6, p0, Lcom/google/android/gms/internal/ads/czx;->d:J

    .line 6
    iput-object p8, p0, Lcom/google/android/gms/internal/ads/czx;->e:Ljava/nio/ByteBuffer;

    return-void
.end method

.method synthetic constructor <init>(Ljava/nio/ByteBuffer;JJJLjava/nio/ByteBuffer;Lcom/google/android/gms/internal/ads/a;)V
    .locals 0

    .line 8
    invoke-direct/range {p0 .. p8}, Lcom/google/android/gms/internal/ads/czx;-><init>(Ljava/nio/ByteBuffer;JJJLjava/nio/ByteBuffer;)V

    return-void
.end method
