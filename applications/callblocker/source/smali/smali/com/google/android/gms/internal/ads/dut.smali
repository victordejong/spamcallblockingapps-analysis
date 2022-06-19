.class final Lcom/google/android/gms/internal/ads/dut;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field private a:Ljava/io/ByteArrayOutputStream;

.field private b:Landroid/util/Base64OutputStream;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x1000

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dut;->a:Ljava/io/ByteArrayOutputStream;

    .line 3
    new-instance v0, Landroid/util/Base64OutputStream;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dut;->a:Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/util/Base64OutputStream;-><init>(Ljava/io/OutputStream;I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dut;->b:Landroid/util/Base64OutputStream;

    .line 4
    return-void
.end method


# virtual methods
.method public final a([B)V
    .locals 1

    .prologue
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dut;->b:Landroid/util/Base64OutputStream;

    invoke-virtual {v0, p1}, Landroid/util/Base64OutputStream;->write([B)V

    .line 6
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dut;->b:Landroid/util/Base64OutputStream;

    invoke-virtual {v0}, Landroid/util/Base64OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dut;->a:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dut;->a:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 13
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/dut;->a:Ljava/io/ByteArrayOutputStream;

    .line 14
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/dut;->b:Landroid/util/Base64OutputStream;

    .line 21
    :goto_1
    return-object v0

    .line 9
    :catch_0
    move-exception v0

    .line 10
    const-string/jumbo v1, "HashManager: Unable to convert to Base64."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/uu;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 16
    :catch_1
    move-exception v0

    .line 17
    :try_start_2
    const-string/jumbo v1, "HashManager: Unable to convert to Base64."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/uu;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 18
    const-string/jumbo v0, ""
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 19
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/dut;->a:Ljava/io/ByteArrayOutputStream;

    .line 20
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/dut;->b:Landroid/util/Base64OutputStream;

    goto :goto_1

    .line 22
    :catchall_0
    move-exception v0

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/dut;->a:Ljava/io/ByteArrayOutputStream;

    .line 23
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/dut;->b:Landroid/util/Base64OutputStream;

    .line 24
    throw v0
.end method
