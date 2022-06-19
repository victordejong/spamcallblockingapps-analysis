.class public abstract Lcom/facebook/ads/internal/exoplayer2/offline/DownloadAction;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/exoplayer2/offline/DownloadAction$Deserializer;
    }
.end annotation


# static fields
.field public static A05:[B

.field public static A06:[Ljava/lang/String;


# instance fields
.field public final A00:I

.field public final A01:Landroid/net/Uri;

.field public final A02:Ljava/lang/String;

.field public final A03:Z

.field public final A04:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/internal/exoplayer2/offline/DownloadAction;->A03()V

    invoke-static {}, Lcom/facebook/ads/internal/exoplayer2/offline/DownloadAction;->A02()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILandroid/net/Uri;Z[B)V
    .locals 1
    .param p5    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1056
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1057
    iput-object p1, p0, Lcom/facebook/ads/internal/exoplayer2/offline/DownloadAction;->A02:Ljava/lang/String;

    .line 1058
    iput p2, p0, Lcom/facebook/ads/internal/exoplayer2/offline/DownloadAction;->A00:I

    .line 1059
    iput-object p3, p0, Lcom/facebook/ads/internal/exoplayer2/offline/DownloadAction;->A01:Landroid/net/Uri;

    .line 1060
    iput-boolean p4, p0, Lcom/facebook/ads/internal/exoplayer2/offline/DownloadAction;->A03:Z

    .line 1061
    if-eqz p5, :cond_0

    :goto_0
    iput-object p5, p0, Lcom/facebook/ads/internal/exoplayer2/offline/DownloadAction;->A04:[B

    .line 1062
    return-void

    .line 1063
    :cond_0
    const/4 v0, 0x0

    new-array p5, v0, [B

    goto :goto_0
.end method

.method public static A00([Lcom/facebook/ads/internal/exoplayer2/offline/DownloadAction$Deserializer;Ljava/io/InputStream;)Lcom/facebook/ads/internal/exoplayer2/offline/DownloadAction;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1064
    new-instance v6, Ljava/io/DataInputStream;

    invoke-direct {v6, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1065
    .local p0, "dataInputStream":Ljava/io/DataInputStream;
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v5

    .line 1066
    .local p1, "type":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    .line 1067
    .local v6, "version":I
    array-length v3, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, p0, v2

    .line 1068
    .local v3, "deserializer":Lcom/facebook/ads/internal/exoplayer2/offline/DownloadAction$Deserializer;
    iget-object v0, v1, Lcom/facebook/ads/internal/exoplayer2/offline/DownloadAction$Deserializer;->A01:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, v1, Lcom/facebook/ads/internal/exoplayer2/offline/DownloadAction$Deserializer;->A00:I

    if-lt v0, v4, :cond_0

    .line 1069
    invoke-virtual {v1, v4, v6}, Lcom/facebook/ads/internal/exoplayer2/offline/DownloadAction$Deserializer;->A01(ILjava/io/DataInputStream;)Lcom/facebook/ads/internal/exoplayer2/offline/DownloadAction;

    move-result-object v0

    return-object v0

    .line 1070
    .end local v3    # "deserializer":Lcom/facebook/ads/internal/exoplayer2/offline/DownloadAction$Deserializer;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1071
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x2

    const/16 v1, 0x1a

    const/16 v0, 0xb

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/internal/exoplayer2/offline/DownloadAction;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const/4 v1, 0x2

    const/16 v0, 0x4c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/internal/exoplayer2/offline/DownloadAction;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/EN;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/EN;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/internal/exoplayer2/offline/DownloadAction;->A05:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x6c

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A02()V
    .locals 1

    const/16 v0, 0x1c

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/internal/exoplayer2/offline/DownloadAction;->A05:[B

    return-void

    :array_0
    .array-data 1
        -0x1ct
        -0x28t
        -0x3bt
        -0x1at
        -0x69t
        -0x25t
        -0x24t
        -0x16t
        -0x24t
        -0x17t
        -0x20t
        -0x28t
        -0x1dt
        -0x20t
        -0xft
        -0x24t
        -0x17t
        -0x69t
        -0x23t
        -0x1at
        -0x14t
        -0x1bt
        -0x25t
        -0x69t
        -0x23t
        -0x1at
        -0x17t
        -0x4ft
    .end array-data
.end method

.method public static A03()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "LIvW6in1OZ2WaE0okT53wCxyThoukv80"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "nxofj7k45CUi048Lhs1642u0CSm2Takg"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "sbpR2yeC6p4wt961c3Y3djeHgSm3yXqx"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "VkJ363FVPT3nc"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "FVWFr5FTYTVpZhQ7x"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "2"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "dvemFqemhJk4U4GzcxZ8o6q3"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "jLggn7eFfrzSZsYAlhuceo"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/internal/exoplayer2/offline/DownloadAction;->A06:[Ljava/lang/String;

    return-void
.end method

.method public static A04(Lcom/facebook/ads/internal/exoplayer2/offline/DownloadAction;Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1072
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1073
    .local p0, "dataOutputStream":Ljava/io/DataOutputStream;
    iget-object v0, p0, Lcom/facebook/ads/internal/exoplayer2/offline/DownloadAction;->A02:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1074
    iget v0, p0, Lcom/facebook/ads/internal/exoplayer2/offline/DownloadAction;->A00:I

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1075
    invoke-virtual {p0, v1}, Lcom/facebook/ads/internal/exoplayer2/offline/DownloadAction;->A09(Ljava/io/DataOutputStream;)V

    .line 1076
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 1077
    return-void
.end method


# virtual methods
.method public abstract A08(Lcom/facebook/ads/redexgen/X/Ej;)Lcom/facebook/ads/redexgen/X/Ei;
.end method

.method public abstract A09(Ljava/io/DataOutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public A0A(Lcom/facebook/ads/internal/exoplayer2/offline/DownloadAction;)Z
    .locals 2

    .line 1078
    iget-object v1, p0, Lcom/facebook/ads/internal/exoplayer2/offline/DownloadAction;->A01:Landroid/net/Uri;

    iget-object v0, p1, Lcom/facebook/ads/internal/exoplayer2/offline/DownloadAction;->A01:Landroid/net/Uri;

    invoke-virtual {v1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1079
    const/4 v5, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/internal/exoplayer2/offline/DownloadAction;->A06:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/internal/exoplayer2/offline/DownloadAction;->A06:[Ljava/lang/String;

    const-string v1, "n"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "dpNWWEubSJufF"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-eq v4, v3, :cond_1

    .line 1080
    .end local p1    # null:Ljava/lang/Object;
    :cond_0
    return v5

    .line 1081
    :cond_1
    check-cast p1, Lcom/facebook/ads/internal/exoplayer2/offline/DownloadAction;

    .line 1082
    .local p1, "that":Lcom/facebook/ads/internal/exoplayer2/offline/DownloadAction;
    iget-object v1, p0, Lcom/facebook/ads/internal/exoplayer2/offline/DownloadAction;->A02:Ljava/lang/String;

    iget-object v0, p1, Lcom/facebook/ads/internal/exoplayer2/offline/DownloadAction;->A02:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v1, p0, Lcom/facebook/ads/internal/exoplayer2/offline/DownloadAction;->A00:I

    iget v0, p1, Lcom/facebook/ads/internal/exoplayer2/offline/DownloadAction;->A00:I

    if-ne v1, v0, :cond_2

    iget-object v1, p0, Lcom/facebook/ads/internal/exoplayer2/offline/DownloadAction;->A01:Landroid/net/Uri;

    iget-object v0, p1, Lcom/facebook/ads/internal/exoplayer2/offline/DownloadAction;->A01:Landroid/net/Uri;

    .line 1083
    invoke-virtual {v1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lcom/facebook/ads/internal/exoplayer2/offline/DownloadAction;->A03:Z

    iget-boolean v0, p1, Lcom/facebook/ads/internal/exoplayer2/offline/DownloadAction;->A03:Z

    if-ne v1, v0, :cond_2

    iget-object v1, p0, Lcom/facebook/ads/internal/exoplayer2/offline/DownloadAction;->A04:[B

    iget-object v0, p1, Lcom/facebook/ads/internal/exoplayer2/offline/DownloadAction;->A04:[B

    .line 1084
    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v5, 0x1

    .line 1085
    :cond_2
    return v5

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public hashCode()I
    .locals 2

    .line 1086
    iget-object v0, p0, Lcom/facebook/ads/internal/exoplayer2/offline/DownloadAction;->A01:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->hashCode()I

    move-result v0

    .line 1087
    .local p0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v0, p0, Lcom/facebook/ads/internal/exoplayer2/offline/DownloadAction;->A03:Z

    add-int/2addr v1, v0

    .line 1088
    .end local p0    # "result":I
    .local v0, "result":I
    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/facebook/ads/internal/exoplayer2/offline/DownloadAction;->A04:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    add-int/2addr v1, v0

    .line 1089
    .end local v0    # "result":I
    .restart local p0    # "result":I
    return v1
.end method
