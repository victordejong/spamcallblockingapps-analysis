.class public final Lp9/c$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp9/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# static fields
.field public static final k:Ljava/lang/String;

.field public static final l:Ljava/lang/String;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lp9/r;

.field public final c:Ljava/lang/String;

.field public final d:Lp9/w;

.field public final e:I

.field public final f:Ljava/lang/String;

.field public final g:Lp9/r;

.field public final h:Lp9/q;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final i:J

.field public final j:J


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lx9/f;->a:Lx9/f;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "OkHttp-Sent-Millis"

    sput-object v1, Lp9/c$d;->k:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "OkHttp-Received-Millis"

    sput-object v0, Lp9/c$d;->l:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Laa/y;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    :try_start_0
    sget-object v0, Laa/o;->a:Ljava/util/logging/Logger;

    .line 3
    new-instance v0, Laa/t;

    invoke-direct {v0, p1}, Laa/t;-><init>(Laa/y;)V

    .line 4
    invoke-virtual {v0}, Laa/t;->t()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lp9/c$d;->a:Ljava/lang/String;

    .line 5
    invoke-virtual {v0}, Laa/t;->t()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lp9/c$d;->c:Ljava/lang/String;

    .line 6
    new-instance v1, Lp9/r$a;

    invoke-direct {v1}, Lp9/r$a;-><init>()V

    .line 7
    invoke-static {v0}, Lp9/c;->k(Laa/h;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    .line 8
    invoke-virtual {v0}, Laa/t;->t()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lp9/r$a;->a(Ljava/lang/String;)Lp9/r$a;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 9
    :cond_0
    new-instance v2, Lp9/r;

    invoke-direct {v2, v1}, Lp9/r;-><init>(Lp9/r$a;)V

    .line 10
    iput-object v2, p0, Lp9/c$d;->b:Lp9/r;

    .line 11
    invoke-virtual {v0}, Laa/t;->t()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lt9/j;->a(Ljava/lang/String;)Lt9/j;

    move-result-object v1

    .line 12
    iget-object v2, v1, Lt9/j;->a:Lp9/w;

    iput-object v2, p0, Lp9/c$d;->d:Lp9/w;

    .line 13
    iget v2, v1, Lt9/j;->b:I

    iput v2, p0, Lp9/c$d;->e:I

    .line 14
    iget-object v1, v1, Lt9/j;->c:Ljava/lang/String;

    iput-object v1, p0, Lp9/c$d;->f:Ljava/lang/String;

    .line 15
    new-instance v1, Lp9/r$a;

    invoke-direct {v1}, Lp9/r$a;-><init>()V

    .line 16
    invoke-static {v0}, Lp9/c;->k(Laa/h;)I

    move-result v2

    :goto_1
    if-ge v3, v2, :cond_1

    .line 17
    invoke-virtual {v0}, Laa/t;->t()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lp9/r$a;->a(Ljava/lang/String;)Lp9/r$a;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 18
    :cond_1
    sget-object v2, Lp9/c$d;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lp9/r$a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 19
    sget-object v4, Lp9/c$d;->l:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lp9/r$a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 20
    invoke-virtual {v1, v2}, Lp9/r$a;->d(Ljava/lang/String;)Lp9/r$a;

    .line 21
    invoke-virtual {v1, v4}, Lp9/r$a;->d(Ljava/lang/String;)Lp9/r$a;

    const-wide/16 v6, 0x0

    if-eqz v3, :cond_2

    .line 22
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    goto :goto_2

    :cond_2
    move-wide v2, v6

    .line 23
    :goto_2
    iput-wide v2, p0, Lp9/c$d;->i:J

    if-eqz v5, :cond_3

    .line 24
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 25
    :cond_3
    iput-wide v6, p0, Lp9/c$d;->j:J

    .line 26
    new-instance v2, Lp9/r;

    invoke-direct {v2, v1}, Lp9/r;-><init>(Lp9/r$a;)V

    .line 27
    iput-object v2, p0, Lp9/c$d;->g:Lp9/r;

    .line 28
    iget-object v1, p0, Lp9/c$d;->a:Ljava/lang/String;

    const-string v2, "https://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 29
    invoke-virtual {v0}, Laa/t;->t()Ljava/lang/String;

    move-result-object v1

    .line 30
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_5

    .line 31
    invoke-virtual {v0}, Laa/t;->t()Ljava/lang/String;

    move-result-object v1

    .line 32
    invoke-static {v1}, Lp9/h;->a(Ljava/lang/String;)Lp9/h;

    move-result-object v1

    .line 33
    invoke-virtual {p0, v0}, Lp9/c$d;->a(Laa/h;)Ljava/util/List;

    move-result-object v2

    .line 34
    invoke-virtual {p0, v0}, Lp9/c$d;->a(Laa/h;)Ljava/util/List;

    move-result-object v3

    .line 35
    invoke-virtual {v0}, Laa/t;->v()Z

    move-result v4

    if-nez v4, :cond_4

    .line 36
    invoke-virtual {v0}, Laa/t;->t()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lp9/f0;->a(Ljava/lang/String;)Lp9/f0;

    move-result-object v0

    goto :goto_3

    .line 37
    :cond_4
    sget-object v0, Lp9/f0;->f:Lp9/f0;

    .line 38
    :goto_3
    new-instance v4, Lp9/q;

    invoke-static {v2}, Lq9/c;->n(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 39
    invoke-static {v3}, Lq9/c;->n(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v4, v0, v1, v2, v3}, Lp9/q;-><init>(Lp9/f0;Lp9/h;Ljava/util/List;Ljava/util/List;)V

    .line 40
    iput-object v4, p0, Lp9/c$d;->h:Lp9/q;

    goto :goto_4

    .line 41
    :cond_5
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expected \"\" but was \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Lp9/c$d;->h:Lp9/q;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    :goto_4
    invoke-interface {p1}, Laa/y;->close()V

    return-void

    :catchall_0
    move-exception v0

    invoke-interface {p1}, Laa/y;->close()V

    throw v0
.end method

.method public constructor <init>(Lp9/b0;)V
    .locals 8

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iget-object v0, p1, Lp9/b0;->a:Lp9/y;

    .line 46
    iget-object v0, v0, Lp9/y;->a:Lp9/s;

    .line 47
    iget-object v0, v0, Lp9/s;->i:Ljava/lang/String;

    .line 48
    iput-object v0, p0, Lp9/c$d;->a:Ljava/lang/String;

    .line 49
    sget v0, Lt9/e;->a:I

    .line 50
    iget-object v0, p1, Lp9/b0;->h:Lp9/b0;

    .line 51
    iget-object v0, v0, Lp9/b0;->a:Lp9/y;

    .line 52
    iget-object v0, v0, Lp9/y;->c:Lp9/r;

    .line 53
    iget-object v1, p1, Lp9/b0;->f:Lp9/r;

    .line 54
    invoke-static {v1}, Lt9/e;->f(Lp9/r;)Ljava/util/Set;

    move-result-object v1

    .line 55
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, Lp9/r$a;

    invoke-direct {v0}, Lp9/r$a;-><init>()V

    .line 56
    new-instance v1, Lp9/r;

    invoke-direct {v1, v0}, Lp9/r;-><init>(Lp9/r$a;)V

    goto :goto_1

    .line 57
    :cond_0
    new-instance v2, Lp9/r$a;

    invoke-direct {v2}, Lp9/r$a;-><init>()V

    const/4 v3, 0x0

    .line 58
    invoke-virtual {v0}, Lp9/r;->f()I

    move-result v4

    :goto_0
    if-ge v3, v4, :cond_2

    .line 59
    invoke-virtual {v0, v3}, Lp9/r;->d(I)Ljava/lang/String;

    move-result-object v5

    .line 60
    invoke-interface {v1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 61
    invoke-virtual {v0, v3}, Lp9/r;->g(I)Ljava/lang/String;

    move-result-object v6

    .line 62
    invoke-static {v5}, Lp9/r;->a(Ljava/lang/String;)V

    .line 63
    invoke-static {v6, v5}, Lp9/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    iget-object v7, v2, Lp9/r$a;->a:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    iget-object v5, v2, Lp9/r$a;->a:Ljava/util/List;

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 66
    :cond_2
    new-instance v1, Lp9/r;

    invoke-direct {v1, v2}, Lp9/r;-><init>(Lp9/r$a;)V

    .line 67
    :goto_1
    iput-object v1, p0, Lp9/c$d;->b:Lp9/r;

    .line 68
    iget-object v0, p1, Lp9/b0;->a:Lp9/y;

    .line 69
    iget-object v0, v0, Lp9/y;->b:Ljava/lang/String;

    .line 70
    iput-object v0, p0, Lp9/c$d;->c:Ljava/lang/String;

    .line 71
    iget-object v0, p1, Lp9/b0;->b:Lp9/w;

    .line 72
    iput-object v0, p0, Lp9/c$d;->d:Lp9/w;

    .line 73
    iget v0, p1, Lp9/b0;->c:I

    .line 74
    iput v0, p0, Lp9/c$d;->e:I

    .line 75
    iget-object v0, p1, Lp9/b0;->d:Ljava/lang/String;

    .line 76
    iput-object v0, p0, Lp9/c$d;->f:Ljava/lang/String;

    .line 77
    iget-object v0, p1, Lp9/b0;->f:Lp9/r;

    .line 78
    iput-object v0, p0, Lp9/c$d;->g:Lp9/r;

    .line 79
    iget-object v0, p1, Lp9/b0;->e:Lp9/q;

    .line 80
    iput-object v0, p0, Lp9/c$d;->h:Lp9/q;

    .line 81
    iget-wide v0, p1, Lp9/b0;->k:J

    .line 82
    iput-wide v0, p0, Lp9/c$d;->i:J

    .line 83
    iget-wide v0, p1, Lp9/b0;->l:J

    .line 84
    iput-wide v0, p0, Lp9/c$d;->j:J

    return-void
.end method


# virtual methods
.method public final a(Laa/h;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laa/h;",
            ")",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lp9/c;->k(Laa/h;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    :try_start_0
    const-string v1, "X.509"

    .line 3
    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    .line 4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    .line 5
    move-object v4, p1

    check-cast v4, Laa/t;

    invoke-virtual {v4}, Laa/t;->t()Ljava/lang/String;

    move-result-object v4

    .line 6
    new-instance v5, Laa/f;

    invoke-direct {v5}, Laa/f;-><init>()V

    .line 7
    invoke-static {v4}, Laa/i;->b(Ljava/lang/String;)Laa/i;

    move-result-object v4

    invoke-virtual {v5, v4}, Laa/f;->L(Laa/i;)Laa/f;

    .line 8
    new-instance v4, Laa/e;

    invoke-direct {v4, v5}, Laa/e;-><init>(Laa/f;)V

    .line 9
    invoke-virtual {v1, v4}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v2

    :catch_0
    move-exception p1

    .line 10
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p1}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b(Laa/g;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laa/g;",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    check-cast p1, Laa/r;

    invoke-virtual {p1, v0, v1}, Laa/r;->S(J)Laa/g;

    const/16 v0, 0xa

    .line 2
    invoke-virtual {p1, v0}, Laa/r;->w(I)Laa/g;

    const/4 v1, 0x0

    .line 3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_0

    .line 4
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/Certificate;

    invoke-virtual {v3}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v3

    .line 5
    invoke-static {v3}, Laa/i;->i([B)Laa/i;

    move-result-object v3

    invoke-virtual {v3}, Laa/i;->a()Ljava/lang/String;

    move-result-object v3

    .line 6
    invoke-virtual {p1, v3}, Laa/r;->R(Ljava/lang/String;)Laa/g;

    .line 7
    invoke-virtual {p1, v0}, Laa/r;->w(I)Laa/g;
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    .line 8
    new-instance p2, Ljava/io/IOException;

    invoke-virtual {p1}, Ljava/security/cert/CertificateEncodingException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public c(Lr9/e$c;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, v0}, Lr9/e$c;->d(I)Laa/x;

    move-result-object p1

    sget-object v1, Laa/o;->a:Ljava/util/logging/Logger;

    .line 2
    new-instance v1, Laa/r;

    invoke-direct {v1, p1}, Laa/r;-><init>(Laa/x;)V

    .line 3
    iget-object p1, p0, Lp9/c$d;->a:Ljava/lang/String;

    invoke-virtual {v1, p1}, Laa/r;->R(Ljava/lang/String;)Laa/g;

    const/16 p1, 0xa

    .line 4
    invoke-virtual {v1, p1}, Laa/r;->w(I)Laa/g;

    .line 5
    iget-object v2, p0, Lp9/c$d;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Laa/r;->R(Ljava/lang/String;)Laa/g;

    .line 6
    invoke-virtual {v1, p1}, Laa/r;->w(I)Laa/g;

    .line 7
    iget-object v2, p0, Lp9/c$d;->b:Lp9/r;

    invoke-virtual {v2}, Lp9/r;->f()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Laa/r;->S(J)Laa/g;

    .line 8
    invoke-virtual {v1, p1}, Laa/r;->w(I)Laa/g;

    .line 9
    iget-object v2, p0, Lp9/c$d;->b:Lp9/r;

    invoke-virtual {v2}, Lp9/r;->f()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    const-string v4, ": "

    if-ge v3, v2, :cond_0

    .line 10
    iget-object v5, p0, Lp9/c$d;->b:Lp9/r;

    invoke-virtual {v5, v3}, Lp9/r;->d(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Laa/r;->R(Ljava/lang/String;)Laa/g;

    .line 11
    invoke-virtual {v1, v4}, Laa/r;->R(Ljava/lang/String;)Laa/g;

    iget-object v4, p0, Lp9/c$d;->b:Lp9/r;

    .line 12
    invoke-virtual {v4, v3}, Lp9/r;->g(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Laa/r;->R(Ljava/lang/String;)Laa/g;

    .line 13
    invoke-virtual {v1, p1}, Laa/r;->w(I)Laa/g;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 14
    :cond_0
    iget-object v2, p0, Lp9/c$d;->d:Lp9/w;

    iget v3, p0, Lp9/c$d;->e:I

    iget-object v5, p0, Lp9/c$d;->f:Ljava/lang/String;

    .line 15
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    sget-object v7, Lp9/w;->b:Lp9/w;

    if-ne v2, v7, :cond_1

    const-string v2, "HTTP/1.0"

    goto :goto_1

    :cond_1
    const-string v2, "HTTP/1.1"

    :goto_1
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    .line 17
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-eqz v5, :cond_2

    .line 18
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    :cond_2
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 20
    invoke-virtual {v1, v2}, Laa/r;->R(Ljava/lang/String;)Laa/g;

    .line 21
    invoke-virtual {v1, p1}, Laa/r;->w(I)Laa/g;

    .line 22
    iget-object v2, p0, Lp9/c$d;->g:Lp9/r;

    invoke-virtual {v2}, Lp9/r;->f()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Laa/r;->S(J)Laa/g;

    .line 23
    invoke-virtual {v1, p1}, Laa/r;->w(I)Laa/g;

    .line 24
    iget-object v2, p0, Lp9/c$d;->g:Lp9/r;

    invoke-virtual {v2}, Lp9/r;->f()I

    move-result v2

    :goto_2
    if-ge v0, v2, :cond_3

    .line 25
    iget-object v3, p0, Lp9/c$d;->g:Lp9/r;

    invoke-virtual {v3, v0}, Lp9/r;->d(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Laa/r;->R(Ljava/lang/String;)Laa/g;

    .line 26
    invoke-virtual {v1, v4}, Laa/r;->R(Ljava/lang/String;)Laa/g;

    iget-object v3, p0, Lp9/c$d;->g:Lp9/r;

    .line 27
    invoke-virtual {v3, v0}, Lp9/r;->g(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Laa/r;->R(Ljava/lang/String;)Laa/g;

    .line 28
    invoke-virtual {v1, p1}, Laa/r;->w(I)Laa/g;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 29
    :cond_3
    sget-object v0, Lp9/c$d;->k:Ljava/lang/String;

    invoke-virtual {v1, v0}, Laa/r;->R(Ljava/lang/String;)Laa/g;

    .line 30
    invoke-virtual {v1, v4}, Laa/r;->R(Ljava/lang/String;)Laa/g;

    iget-wide v2, p0, Lp9/c$d;->i:J

    .line 31
    invoke-virtual {v1, v2, v3}, Laa/r;->S(J)Laa/g;

    .line 32
    invoke-virtual {v1, p1}, Laa/r;->w(I)Laa/g;

    .line 33
    sget-object v0, Lp9/c$d;->l:Ljava/lang/String;

    invoke-virtual {v1, v0}, Laa/r;->R(Ljava/lang/String;)Laa/g;

    .line 34
    invoke-virtual {v1, v4}, Laa/r;->R(Ljava/lang/String;)Laa/g;

    iget-wide v2, p0, Lp9/c$d;->j:J

    .line 35
    invoke-virtual {v1, v2, v3}, Laa/r;->S(J)Laa/g;

    .line 36
    invoke-virtual {v1, p1}, Laa/r;->w(I)Laa/g;

    .line 37
    iget-object v0, p0, Lp9/c$d;->a:Ljava/lang/String;

    const-string v2, "https://"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 38
    invoke-virtual {v1, p1}, Laa/r;->w(I)Laa/g;

    .line 39
    iget-object v0, p0, Lp9/c$d;->h:Lp9/q;

    .line 40
    iget-object v0, v0, Lp9/q;->b:Lp9/h;

    .line 41
    iget-object v0, v0, Lp9/h;->a:Ljava/lang/String;

    .line 42
    invoke-virtual {v1, v0}, Laa/r;->R(Ljava/lang/String;)Laa/g;

    .line 43
    invoke-virtual {v1, p1}, Laa/r;->w(I)Laa/g;

    .line 44
    iget-object v0, p0, Lp9/c$d;->h:Lp9/q;

    .line 45
    iget-object v0, v0, Lp9/q;->c:Ljava/util/List;

    .line 46
    invoke-virtual {p0, v1, v0}, Lp9/c$d;->b(Laa/g;Ljava/util/List;)V

    .line 47
    iget-object v0, p0, Lp9/c$d;->h:Lp9/q;

    .line 48
    iget-object v0, v0, Lp9/q;->d:Ljava/util/List;

    .line 49
    invoke-virtual {p0, v1, v0}, Lp9/c$d;->b(Laa/g;Ljava/util/List;)V

    .line 50
    iget-object v0, p0, Lp9/c$d;->h:Lp9/q;

    .line 51
    iget-object v0, v0, Lp9/q;->a:Lp9/f0;

    .line 52
    iget-object v0, v0, Lp9/f0;->a:Ljava/lang/String;

    .line 53
    invoke-virtual {v1, v0}, Laa/r;->R(Ljava/lang/String;)Laa/g;

    invoke-virtual {v1, p1}, Laa/r;->w(I)Laa/g;

    .line 54
    :cond_4
    invoke-virtual {v1}, Laa/r;->close()V

    return-void
.end method
