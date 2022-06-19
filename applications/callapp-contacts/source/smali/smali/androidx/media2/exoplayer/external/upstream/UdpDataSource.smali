.class public final Landroidx/media2/exoplayer/external/upstream/UdpDataSource;
.super Landroidx/media2/exoplayer/external/upstream/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/upstream/UdpDataSource$UdpDataSourceException;
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:[B

.field private final c:Ljava/net/DatagramPacket;

.field private d:Landroid/net/Uri;

.field private e:Ljava/net/DatagramSocket;

.field private f:Ljava/net/MulticastSocket;

.field private g:Ljava/net/InetAddress;

.field private h:Ljava/net/InetSocketAddress;

.field private i:Z

.field private j:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x7d0

    .line 73
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/upstream/UdpDataSource;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/16 v0, 0x1f40

    .line 82
    invoke-direct {p0, p1, v0}, Landroidx/media2/exoplayer/external/upstream/UdpDataSource;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 2

    const/4 v0, 0x1

    .line 93
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/upstream/d;-><init>(Z)V

    .line 94
    iput p2, p0, Landroidx/media2/exoplayer/external/upstream/UdpDataSource;->a:I

    .line 95
    new-array p2, p1, [B

    iput-object p2, p0, Landroidx/media2/exoplayer/external/upstream/UdpDataSource;->b:[B

    .line 96
    new-instance v0, Ljava/net/DatagramPacket;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1, p1}, Ljava/net/DatagramPacket;-><init>([BII)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/UdpDataSource;->c:Ljava/net/DatagramPacket;

    return-void
.end method


# virtual methods
.method public final a([BII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/upstream/UdpDataSource$UdpDataSourceException;
        }
    .end annotation

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return p1

    .line 136
    :cond_0
    iget v0, p0, Landroidx/media2/exoplayer/external/upstream/UdpDataSource;->j:I

    if-nez v0, :cond_1

    .line 139
    :try_start_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/UdpDataSource;->e:Ljava/net/DatagramSocket;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/upstream/UdpDataSource;->c:Ljava/net/DatagramPacket;

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/UdpDataSource;->c:Ljava/net/DatagramPacket;

    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getLength()I

    move-result v0

    iput v0, p0, Landroidx/media2/exoplayer/external/upstream/UdpDataSource;->j:I

    .line 144
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/upstream/UdpDataSource;->a(I)V

    goto :goto_0

    :catch_0
    move-exception p1

    .line 141
    new-instance p2, Landroidx/media2/exoplayer/external/upstream/UdpDataSource$UdpDataSourceException;

    invoke-direct {p2, p1}, Landroidx/media2/exoplayer/external/upstream/UdpDataSource$UdpDataSourceException;-><init>(Ljava/io/IOException;)V

    throw p2

    .line 147
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/UdpDataSource;->c:Ljava/net/DatagramPacket;

    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getLength()I

    move-result v0

    iget v1, p0, Landroidx/media2/exoplayer/external/upstream/UdpDataSource;->j:I

    sub-int/2addr v0, v1

    .line 148
    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 149
    iget-object v1, p0, Landroidx/media2/exoplayer/external/upstream/UdpDataSource;->b:[B

    invoke-static {v1, v0, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 150
    iget p1, p0, Landroidx/media2/exoplayer/external/upstream/UdpDataSource;->j:I

    sub-int/2addr p1, p3

    iput p1, p0, Landroidx/media2/exoplayer/external/upstream/UdpDataSource;->j:I

    return p3
.end method

.method public final a(Landroidx/media2/exoplayer/external/upstream/h;)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/upstream/UdpDataSource$UdpDataSourceException;
        }
    .end annotation

    .line 101
    iget-object v0, p1, Landroidx/media2/exoplayer/external/upstream/h;->a:Landroid/net/Uri;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/UdpDataSource;->d:Landroid/net/Uri;

    .line 102
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 103
    iget-object v1, p0, Landroidx/media2/exoplayer/external/upstream/UdpDataSource;->d:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPort()I

    move-result v1

    .line 104
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/upstream/UdpDataSource;->d()V

    .line 106
    :try_start_0
    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/UdpDataSource;->g:Ljava/net/InetAddress;

    .line 107
    new-instance v0, Ljava/net/InetSocketAddress;

    iget-object v2, p0, Landroidx/media2/exoplayer/external/upstream/UdpDataSource;->g:Ljava/net/InetAddress;

    invoke-direct {v0, v2, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/UdpDataSource;->h:Ljava/net/InetSocketAddress;

    .line 108
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/UdpDataSource;->g:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    new-instance v0, Ljava/net/MulticastSocket;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/upstream/UdpDataSource;->h:Ljava/net/InetSocketAddress;

    invoke-direct {v0, v1}, Ljava/net/MulticastSocket;-><init>(Ljava/net/SocketAddress;)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/UdpDataSource;->f:Ljava/net/MulticastSocket;

    .line 110
    iget-object v1, p0, Landroidx/media2/exoplayer/external/upstream/UdpDataSource;->g:Ljava/net/InetAddress;

    invoke-virtual {v0, v1}, Ljava/net/MulticastSocket;->joinGroup(Ljava/net/InetAddress;)V

    .line 111
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/UdpDataSource;->f:Ljava/net/MulticastSocket;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/UdpDataSource;->e:Ljava/net/DatagramSocket;

    goto :goto_0

    .line 113
    :cond_0
    new-instance v0, Ljava/net/DatagramSocket;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/upstream/UdpDataSource;->h:Ljava/net/InetSocketAddress;

    invoke-direct {v0, v1}, Ljava/net/DatagramSocket;-><init>(Ljava/net/SocketAddress;)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/UdpDataSource;->e:Ljava/net/DatagramSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 120
    :goto_0
    :try_start_1
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/UdpDataSource;->e:Ljava/net/DatagramSocket;

    iget v1, p0, Landroidx/media2/exoplayer/external/upstream/UdpDataSource;->a:I

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->setSoTimeout(I)V
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v0, 0x1

    .line 125
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/upstream/UdpDataSource;->i:Z

    .line 126
    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/upstream/UdpDataSource;->b(Landroidx/media2/exoplayer/external/upstream/h;)V

    const-wide/16 v0, -0x1

    return-wide v0

    :catch_0
    move-exception p1

    .line 122
    new-instance v0, Landroidx/media2/exoplayer/external/upstream/UdpDataSource$UdpDataSourceException;

    invoke-direct {v0, p1}, Landroidx/media2/exoplayer/external/upstream/UdpDataSource$UdpDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v0

    :catch_1
    move-exception p1

    .line 116
    new-instance v0, Landroidx/media2/exoplayer/external/upstream/UdpDataSource$UdpDataSourceException;

    invoke-direct {v0, p1}, Landroidx/media2/exoplayer/external/upstream/UdpDataSource$UdpDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public final a()Landroid/net/Uri;
    .locals 1

    .line 157
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/UdpDataSource;->d:Landroid/net/Uri;

    return-object v0
.end method

.method public final c()V
    .locals 3

    const/4 v0, 0x0

    .line 162
    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/UdpDataSource;->d:Landroid/net/Uri;

    .line 163
    iget-object v1, p0, Landroidx/media2/exoplayer/external/upstream/UdpDataSource;->f:Ljava/net/MulticastSocket;

    if-eqz v1, :cond_0

    .line 165
    :try_start_0
    iget-object v2, p0, Landroidx/media2/exoplayer/external/upstream/UdpDataSource;->g:Ljava/net/InetAddress;

    invoke-virtual {v1, v2}, Ljava/net/MulticastSocket;->leaveGroup(Ljava/net/InetAddress;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    :catch_0
    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/UdpDataSource;->f:Ljava/net/MulticastSocket;

    .line 171
    :cond_0
    iget-object v1, p0, Landroidx/media2/exoplayer/external/upstream/UdpDataSource;->e:Ljava/net/DatagramSocket;

    if-eqz v1, :cond_1

    .line 172
    invoke-virtual {v1}, Ljava/net/DatagramSocket;->close()V

    .line 173
    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/UdpDataSource;->e:Ljava/net/DatagramSocket;

    .line 175
    :cond_1
    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/UdpDataSource;->g:Ljava/net/InetAddress;

    .line 176
    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/UdpDataSource;->h:Ljava/net/InetSocketAddress;

    const/4 v0, 0x0

    .line 177
    iput v0, p0, Landroidx/media2/exoplayer/external/upstream/UdpDataSource;->j:I

    .line 178
    iget-boolean v1, p0, Landroidx/media2/exoplayer/external/upstream/UdpDataSource;->i:Z

    if-eqz v1, :cond_2

    .line 179
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/upstream/UdpDataSource;->i:Z

    .line 180
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/upstream/UdpDataSource;->e()V

    :cond_2
    return-void
.end method
