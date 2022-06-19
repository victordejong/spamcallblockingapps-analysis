.class public final Lokhttp3/k;
.super Ljava/lang/Object;
.source "ConnectionSpec.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/k$a;
    }
.end annotation


# static fields
.field public static final a:Lokhttp3/k;

.field public static final b:Lokhttp3/k;

.field public static final c:Lokhttp3/k;

.field private static final h:[Lokhttp3/h;


# instance fields
.field final d:Z

.field final e:Z

.field final f:[Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final g:[Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 46
    const/16 v0, 0xd

    new-array v0, v0, [Lokhttp3/h;

    sget-object v1, Lokhttp3/h;->aX:Lokhttp3/h;

    aput-object v1, v0, v4

    sget-object v1, Lokhttp3/h;->bb:Lokhttp3/h;

    aput-object v1, v0, v3

    sget-object v1, Lokhttp3/h;->aY:Lokhttp3/h;

    aput-object v1, v0, v5

    sget-object v1, Lokhttp3/h;->bc:Lokhttp3/h;

    aput-object v1, v0, v6

    sget-object v1, Lokhttp3/h;->bi:Lokhttp3/h;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lokhttp3/h;->bh:Lokhttp3/h;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lokhttp3/h;->aI:Lokhttp3/h;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lokhttp3/h;->aJ:Lokhttp3/h;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lokhttp3/h;->ag:Lokhttp3/h;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lokhttp3/h;->ah:Lokhttp3/h;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lokhttp3/h;->E:Lokhttp3/h;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lokhttp3/h;->I:Lokhttp3/h;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lokhttp3/h;->i:Lokhttp3/h;

    aput-object v2, v0, v1

    sput-object v0, Lokhttp3/k;->h:[Lokhttp3/h;

    .line 67
    new-instance v0, Lokhttp3/k$a;

    invoke-direct {v0, v3}, Lokhttp3/k$a;-><init>(Z)V

    sget-object v1, Lokhttp3/k;->h:[Lokhttp3/h;

    .line 68
    invoke-virtual {v0, v1}, Lokhttp3/k$a;->a([Lokhttp3/h;)Lokhttp3/k$a;

    move-result-object v0

    new-array v1, v7, [Lokhttp3/af;

    sget-object v2, Lokhttp3/af;->a:Lokhttp3/af;

    aput-object v2, v1, v4

    sget-object v2, Lokhttp3/af;->b:Lokhttp3/af;

    aput-object v2, v1, v3

    sget-object v2, Lokhttp3/af;->c:Lokhttp3/af;

    aput-object v2, v1, v5

    sget-object v2, Lokhttp3/af;->d:Lokhttp3/af;

    aput-object v2, v1, v6

    .line 69
    invoke-virtual {v0, v1}, Lokhttp3/k$a;->a([Lokhttp3/af;)Lokhttp3/k$a;

    move-result-object v0

    .line 70
    invoke-virtual {v0, v3}, Lokhttp3/k$a;->a(Z)Lokhttp3/k$a;

    move-result-object v0

    .line 71
    invoke-virtual {v0}, Lokhttp3/k$a;->a()Lokhttp3/k;

    move-result-object v0

    sput-object v0, Lokhttp3/k;->a:Lokhttp3/k;

    .line 74
    new-instance v0, Lokhttp3/k$a;

    sget-object v1, Lokhttp3/k;->a:Lokhttp3/k;

    invoke-direct {v0, v1}, Lokhttp3/k$a;-><init>(Lokhttp3/k;)V

    new-array v1, v3, [Lokhttp3/af;

    sget-object v2, Lokhttp3/af;->d:Lokhttp3/af;

    aput-object v2, v1, v4

    .line 75
    invoke-virtual {v0, v1}, Lokhttp3/k$a;->a([Lokhttp3/af;)Lokhttp3/k$a;

    move-result-object v0

    .line 76
    invoke-virtual {v0, v3}, Lokhttp3/k$a;->a(Z)Lokhttp3/k$a;

    move-result-object v0

    .line 77
    invoke-virtual {v0}, Lokhttp3/k$a;->a()Lokhttp3/k;

    move-result-object v0

    sput-object v0, Lokhttp3/k;->b:Lokhttp3/k;

    .line 80
    new-instance v0, Lokhttp3/k$a;

    invoke-direct {v0, v4}, Lokhttp3/k$a;-><init>(Z)V

    invoke-virtual {v0}, Lokhttp3/k$a;->a()Lokhttp3/k;

    move-result-object v0

    sput-object v0, Lokhttp3/k;->c:Lokhttp3/k;

    return-void
.end method

.method constructor <init>(Lokhttp3/k$a;)V
    .locals 1

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iget-boolean v0, p1, Lokhttp3/k$a;->a:Z

    iput-boolean v0, p0, Lokhttp3/k;->d:Z

    .line 89
    iget-object v0, p1, Lokhttp3/k$a;->b:[Ljava/lang/String;

    iput-object v0, p0, Lokhttp3/k;->f:[Ljava/lang/String;

    .line 90
    iget-object v0, p1, Lokhttp3/k$a;->c:[Ljava/lang/String;

    iput-object v0, p0, Lokhttp3/k;->g:[Ljava/lang/String;

    .line 91
    iget-boolean v0, p1, Lokhttp3/k$a;->d:Z

    iput-boolean v0, p0, Lokhttp3/k;->e:Z

    .line 92
    return-void
.end method

.method private b(Ljavax/net/ssl/SSLSocket;Z)Lokhttp3/k;
    .locals 5

    .prologue
    .line 135
    iget-object v0, p0, Lokhttp3/k;->f:[Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 136
    sget-object v0, Lokhttp3/h;->a:Ljava/util/Comparator;

    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lokhttp3/k;->f:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lokhttp3/internal/c;->a(Ljava/util/Comparator;[Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 138
    :goto_0
    iget-object v1, p0, Lokhttp3/k;->g:[Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 139
    sget-object v1, Lokhttp3/internal/c;->h:Ljava/util/Comparator;

    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lokhttp3/k;->g:[Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lokhttp3/internal/c;->a(Ljava/util/Comparator;[Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 144
    :goto_1
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v2

    .line 145
    sget-object v3, Lokhttp3/h;->a:Ljava/util/Comparator;

    const-string/jumbo v4, "TLS_FALLBACK_SCSV"

    invoke-static {v3, v2, v4}, Lokhttp3/internal/c;->a(Ljava/util/Comparator;[Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 147
    if-eqz p2, :cond_0

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 148
    aget-object v2, v2, v3

    invoke-static {v0, v2}, Lokhttp3/internal/c;->a([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 152
    :cond_0
    new-instance v2, Lokhttp3/k$a;

    invoke-direct {v2, p0}, Lokhttp3/k$a;-><init>(Lokhttp3/k;)V

    .line 153
    invoke-virtual {v2, v0}, Lokhttp3/k$a;->a([Ljava/lang/String;)Lokhttp3/k$a;

    move-result-object v0

    .line 154
    invoke-virtual {v0, v1}, Lokhttp3/k$a;->b([Ljava/lang/String;)Lokhttp3/k$a;

    move-result-object v0

    .line 155
    invoke-virtual {v0}, Lokhttp3/k$a;->a()Lokhttp3/k;

    move-result-object v0

    .line 152
    return-object v0

    .line 137
    :cond_1
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 140
    :cond_2
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method


# virtual methods
.method a(Ljavax/net/ssl/SSLSocket;Z)V
    .locals 2

    .prologue
    .line 120
    invoke-direct {p0, p1, p2}, Lokhttp3/k;->b(Ljavax/net/ssl/SSLSocket;Z)Lokhttp3/k;

    move-result-object v0

    .line 122
    iget-object v1, v0, Lokhttp3/k;->g:[Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 123
    iget-object v1, v0, Lokhttp3/k;->g:[Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    .line 125
    :cond_0
    iget-object v1, v0, Lokhttp3/k;->f:[Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 126
    iget-object v0, v0, Lokhttp3/k;->f:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    .line 128
    :cond_1
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 95
    iget-boolean v0, p0, Lokhttp3/k;->d:Z

    return v0
.end method

.method public a(Ljavax/net/ssl/SSLSocket;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 170
    iget-boolean v1, p0, Lokhttp3/k;->d:Z

    if-nez v1, :cond_1

    .line 184
    :cond_0
    :goto_0
    return v0

    .line 174
    :cond_1
    iget-object v1, p0, Lokhttp3/k;->g:[Ljava/lang/String;

    if-eqz v1, :cond_2

    sget-object v1, Lokhttp3/internal/c;->h:Ljava/util/Comparator;

    iget-object v2, p0, Lokhttp3/k;->g:[Ljava/lang/String;

    .line 175
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v3

    .line 174
    invoke-static {v1, v2, v3}, Lokhttp3/internal/c;->b(Ljava/util/Comparator;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 179
    :cond_2
    iget-object v1, p0, Lokhttp3/k;->f:[Ljava/lang/String;

    if-eqz v1, :cond_3

    sget-object v1, Lokhttp3/h;->a:Ljava/util/Comparator;

    iget-object v2, p0, Lokhttp3/k;->f:[Ljava/lang/String;

    .line 180
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v3

    .line 179
    invoke-static {v1, v2, v3}, Lokhttp3/internal/c;->b(Ljava/util/Comparator;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 184
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lokhttp3/h;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 103
    iget-object v0, p0, Lokhttp3/k;->f:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lokhttp3/k;->f:[Ljava/lang/String;

    invoke-static {v0}, Lokhttp3/h;->a([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lokhttp3/af;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 111
    iget-object v0, p0, Lokhttp3/k;->g:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lokhttp3/k;->g:[Ljava/lang/String;

    invoke-static {v0}, Lokhttp3/af;->a([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 115
    iget-boolean v0, p0, Lokhttp3/k;->e:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 188
    instance-of v2, p1, Lokhttp3/k;

    if-nez v2, :cond_1

    .line 200
    :cond_0
    :goto_0
    return v0

    .line 189
    :cond_1
    if-ne p1, p0, :cond_2

    move v0, v1

    goto :goto_0

    .line 191
    :cond_2
    check-cast p1, Lokhttp3/k;

    .line 192
    iget-boolean v2, p0, Lokhttp3/k;->d:Z

    iget-boolean v3, p1, Lokhttp3/k;->d:Z

    if-ne v2, v3, :cond_0

    .line 194
    iget-boolean v2, p0, Lokhttp3/k;->d:Z

    if-eqz v2, :cond_3

    .line 195
    iget-object v2, p0, Lokhttp3/k;->f:[Ljava/lang/String;

    iget-object v3, p1, Lokhttp3/k;->f:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 196
    iget-object v2, p0, Lokhttp3/k;->g:[Ljava/lang/String;

    iget-object v3, p1, Lokhttp3/k;->g:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 197
    iget-boolean v2, p0, Lokhttp3/k;->e:Z

    iget-boolean v3, p1, Lokhttp3/k;->e:Z

    if-ne v2, v3, :cond_0

    :cond_3
    move v0, v1

    .line 200
    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 204
    const/16 v0, 0x11

    .line 205
    iget-boolean v1, p0, Lokhttp3/k;->d:Z

    if-eqz v1, :cond_0

    .line 206
    iget-object v0, p0, Lokhttp3/k;->f:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    .line 207
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lokhttp3/k;->g:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 208
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v0, p0, Lokhttp3/k;->e:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, v1

    .line 210
    :cond_0
    return v0

    .line 208
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 214
    iget-boolean v0, p0, Lokhttp3/k;->d:Z

    if-nez v0, :cond_0

    .line 215
    const-string/jumbo v0, "ConnectionSpec()"

    .line 220
    :goto_0
    return-object v0

    .line 218
    :cond_0
    iget-object v0, p0, Lokhttp3/k;->f:[Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lokhttp3/k;->b()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 219
    :goto_1
    iget-object v1, p0, Lokhttp3/k;->g:[Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lokhttp3/k;->c()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 220
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ConnectionSpec(cipherSuites="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", tlsVersions="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", supportsTlsExtensions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lokhttp3/k;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 218
    :cond_1
    const-string/jumbo v0, "[all enabled]"

    goto :goto_1

    .line 219
    :cond_2
    const-string/jumbo v1, "[all enabled]"

    goto :goto_2
.end method
