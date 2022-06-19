.class public abstract Lx7/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/http/conn/ssl/X509HostnameVerifier;


# static fields
.field public static final a:Ljava/util/regex/Pattern;

.field public static final b:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 15

    const-string v0, "^(25[0-5]|2[0-4]\\d|[0-1]?\\d?\\d)(\\.(25[0-5]|2[0-4]\\d|[0-1]?\\d?\\d)){3}$"

    .line 1
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lx7/a;->a:Ljava/util/regex/Pattern;

    const-string v1, "ac"

    const-string v2, "co"

    const-string v3, "com"

    const-string v4, "ed"

    const-string v5, "edu"

    const-string v6, "go"

    const-string v7, "gouv"

    const-string v8, "gov"

    const-string v9, "info"

    const-string v10, "lg"

    const-string v11, "ne"

    const-string v12, "net"

    const-string v13, "or"

    const-string v14, "org"

    .line 2
    filled-new-array/range {v1 .. v14}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lx7/a;->b:[Ljava/lang/String;

    .line 3
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final verify(Ljava/lang/String;Ljava/security/cert/X509Certificate;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 9
    new-instance v0, Lx7/b;

    .line 10
    invoke-virtual/range {p2 .. p2}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    invoke-direct {v0, v1}, Lx7/b;-><init>(Ljavax/security/auth/x500/X500Principal;)V

    const/4 v1, 0x0

    .line 11
    iput v1, v0, Lx7/b;->c:I

    .line 12
    iput v1, v0, Lx7/b;->d:I

    .line 13
    iput v1, v0, Lx7/b;->e:I

    .line 14
    iput v1, v0, Lx7/b;->f:I

    .line 15
    iget-object v2, v0, Lx7/b;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    iput-object v2, v0, Lx7/b;->g:[C

    .line 16
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 17
    invoke-virtual {v0}, Lx7/b;->c()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-nez v3, :cond_0

    goto/16 :goto_c

    .line 18
    :cond_0
    :goto_0
    iget v6, v0, Lx7/b;->c:I

    iget v7, v0, Lx7/b;->b:I

    if-ge v6, v7, :cond_1e

    .line 19
    iget-object v8, v0, Lx7/b;->g:[C

    aget-char v8, v8, v6

    const/16 v9, 0x5c

    const-string v10, "Unexpected end of DN: "

    const/16 v11, 0x22

    const/16 v12, 0x20

    const/16 v13, 0x3b

    const/16 v14, 0x2c

    const/16 v15, 0x2b

    if-eq v8, v11, :cond_12

    const/16 v11, 0x23

    if-eq v8, v11, :cond_9

    if-eq v8, v15, :cond_8

    if-eq v8, v14, :cond_8

    if-eq v8, v13, :cond_8

    .line 20
    iput v6, v0, Lx7/b;->d:I

    .line 21
    iput v6, v0, Lx7/b;->e:I

    .line 22
    :cond_1
    :goto_1
    iget v6, v0, Lx7/b;->c:I

    iget v7, v0, Lx7/b;->b:I

    if-lt v6, v7, :cond_2

    .line 23
    new-instance v6, Ljava/lang/String;

    iget-object v7, v0, Lx7/b;->g:[C

    iget v8, v0, Lx7/b;->d:I

    iget v9, v0, Lx7/b;->e:I

    sub-int/2addr v9, v8

    invoke-direct {v6, v7, v8, v9}, Ljava/lang/String;-><init>([CII)V

    goto/16 :goto_9

    .line 24
    :cond_2
    iget-object v7, v0, Lx7/b;->g:[C

    aget-char v8, v7, v6

    if-eq v8, v12, :cond_5

    if-eq v8, v13, :cond_4

    if-eq v8, v9, :cond_3

    if-eq v8, v15, :cond_4

    if-eq v8, v14, :cond_4

    .line 25
    iget v8, v0, Lx7/b;->e:I

    add-int/lit8 v10, v8, 0x1

    iput v10, v0, Lx7/b;->e:I

    aget-char v10, v7, v6

    aput-char v10, v7, v8

    add-int/lit8 v6, v6, 0x1

    .line 26
    iput v6, v0, Lx7/b;->c:I

    goto :goto_1

    .line 27
    :cond_3
    iget v6, v0, Lx7/b;->e:I

    add-int/lit8 v8, v6, 0x1

    iput v8, v0, Lx7/b;->e:I

    invoke-virtual {v0}, Lx7/b;->b()C

    move-result v8

    aput-char v8, v7, v6

    .line 28
    iget v6, v0, Lx7/b;->c:I

    add-int/2addr v6, v5

    iput v6, v0, Lx7/b;->c:I

    goto :goto_1

    .line 29
    :cond_4
    new-instance v6, Ljava/lang/String;

    iget v8, v0, Lx7/b;->d:I

    iget v9, v0, Lx7/b;->e:I

    sub-int/2addr v9, v8

    invoke-direct {v6, v7, v8, v9}, Ljava/lang/String;-><init>([CII)V

    goto/16 :goto_9

    .line 30
    :cond_5
    iget v8, v0, Lx7/b;->e:I

    iput v8, v0, Lx7/b;->f:I

    add-int/lit8 v6, v6, 0x1

    .line 31
    iput v6, v0, Lx7/b;->c:I

    add-int/lit8 v6, v8, 0x1

    .line 32
    iput v6, v0, Lx7/b;->e:I

    aput-char v12, v7, v8

    .line 33
    :goto_2
    iget v6, v0, Lx7/b;->c:I

    iget v7, v0, Lx7/b;->b:I

    if-ge v6, v7, :cond_6

    iget-object v8, v0, Lx7/b;->g:[C

    aget-char v10, v8, v6

    if-ne v10, v12, :cond_6

    .line 34
    iget v7, v0, Lx7/b;->e:I

    add-int/lit8 v10, v7, 0x1

    iput v10, v0, Lx7/b;->e:I

    aput-char v12, v8, v7

    add-int/lit8 v6, v6, 0x1

    .line 35
    iput v6, v0, Lx7/b;->c:I

    goto :goto_2

    :cond_6
    if-eq v6, v7, :cond_7

    .line 36
    iget-object v7, v0, Lx7/b;->g:[C

    aget-char v8, v7, v6

    if-eq v8, v14, :cond_7

    aget-char v8, v7, v6

    if-eq v8, v15, :cond_7

    aget-char v6, v7, v6

    if-ne v6, v13, :cond_1

    .line 37
    :cond_7
    new-instance v6, Ljava/lang/String;

    iget-object v7, v0, Lx7/b;->g:[C

    iget v8, v0, Lx7/b;->d:I

    iget v9, v0, Lx7/b;->f:I

    sub-int/2addr v9, v8

    invoke-direct {v6, v7, v8, v9}, Ljava/lang/String;-><init>([CII)V

    goto/16 :goto_9

    :cond_8
    const-string v6, ""

    goto/16 :goto_9

    :cond_9
    add-int/lit8 v8, v6, 0x4

    if-ge v8, v7, :cond_11

    .line 38
    iput v6, v0, Lx7/b;->d:I

    add-int/lit8 v6, v6, 0x1

    .line 39
    iput v6, v0, Lx7/b;->c:I

    .line 40
    :goto_3
    iget v6, v0, Lx7/b;->c:I

    iget v7, v0, Lx7/b;->b:I

    if-eq v6, v7, :cond_d

    iget-object v7, v0, Lx7/b;->g:[C

    aget-char v8, v7, v6

    if-eq v8, v15, :cond_d

    aget-char v8, v7, v6

    if-eq v8, v14, :cond_d

    aget-char v8, v7, v6

    if-ne v8, v13, :cond_a

    goto :goto_5

    .line 41
    :cond_a
    aget-char v8, v7, v6

    if-ne v8, v12, :cond_b

    .line 42
    iput v6, v0, Lx7/b;->e:I

    add-int/lit8 v6, v6, 0x1

    .line 43
    iput v6, v0, Lx7/b;->c:I

    .line 44
    :goto_4
    iget v6, v0, Lx7/b;->c:I

    iget v7, v0, Lx7/b;->b:I

    if-ge v6, v7, :cond_e

    iget-object v7, v0, Lx7/b;->g:[C

    aget-char v7, v7, v6

    if-ne v7, v12, :cond_e

    add-int/lit8 v6, v6, 0x1

    iput v6, v0, Lx7/b;->c:I

    goto :goto_4

    .line 45
    :cond_b
    aget-char v8, v7, v6

    const/16 v9, 0x41

    if-lt v8, v9, :cond_c

    aget-char v8, v7, v6

    const/16 v9, 0x46

    if-gt v8, v9, :cond_c

    .line 46
    aget-char v8, v7, v6

    add-int/2addr v8, v12

    int-to-char v8, v8

    aput-char v8, v7, v6

    :cond_c
    add-int/lit8 v6, v6, 0x1

    .line 47
    iput v6, v0, Lx7/b;->c:I

    goto :goto_3

    .line 48
    :cond_d
    :goto_5
    iput v6, v0, Lx7/b;->e:I

    .line 49
    :cond_e
    iget v6, v0, Lx7/b;->e:I

    iget v7, v0, Lx7/b;->d:I

    sub-int/2addr v6, v7

    const/4 v8, 0x5

    if-lt v6, v8, :cond_10

    and-int/lit8 v8, v6, 0x1

    if-eqz v8, :cond_10

    .line 50
    div-int/lit8 v8, v6, 0x2

    new-array v9, v8, [B

    add-int/lit8 v7, v7, 0x1

    const/4 v10, 0x0

    :goto_6
    if-ge v10, v8, :cond_f

    .line 51
    invoke-virtual {v0, v7}, Lx7/b;->a(I)I

    move-result v11

    int-to-byte v11, v11

    aput-byte v11, v9, v10

    add-int/2addr v7, v4

    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    .line 52
    :cond_f
    new-instance v7, Ljava/lang/String;

    iget-object v8, v0, Lx7/b;->g:[C

    iget v9, v0, Lx7/b;->d:I

    invoke-direct {v7, v8, v9, v6}, Ljava/lang/String;-><init>([CII)V

    move-object v6, v7

    goto :goto_9

    .line 53
    :cond_10
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-static {v10}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Lx7/b;->a:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 54
    :cond_11
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-static {v10}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Lx7/b;->a:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_12
    add-int/lit8 v6, v6, 0x1

    .line 55
    iput v6, v0, Lx7/b;->c:I

    .line 56
    iput v6, v0, Lx7/b;->d:I

    .line 57
    iput v6, v0, Lx7/b;->e:I

    .line 58
    :goto_7
    iget v6, v0, Lx7/b;->c:I

    iget v7, v0, Lx7/b;->b:I

    if-eq v6, v7, :cond_1d

    .line 59
    iget-object v7, v0, Lx7/b;->g:[C

    aget-char v8, v7, v6

    if-ne v8, v11, :cond_1b

    add-int/lit8 v6, v6, 0x1

    .line 60
    iput v6, v0, Lx7/b;->c:I

    .line 61
    :goto_8
    iget v6, v0, Lx7/b;->c:I

    iget v7, v0, Lx7/b;->b:I

    if-ge v6, v7, :cond_13

    iget-object v7, v0, Lx7/b;->g:[C

    aget-char v7, v7, v6

    if-ne v7, v12, :cond_13

    add-int/lit8 v6, v6, 0x1

    iput v6, v0, Lx7/b;->c:I

    goto :goto_8

    .line 62
    :cond_13
    new-instance v6, Ljava/lang/String;

    iget-object v7, v0, Lx7/b;->g:[C

    iget v8, v0, Lx7/b;->d:I

    iget v9, v0, Lx7/b;->e:I

    sub-int/2addr v9, v8

    invoke-direct {v6, v7, v8, v9}, Ljava/lang/String;-><init>([CII)V

    :goto_9
    const-string v7, "cn"

    .line 63
    invoke-virtual {v7, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 64
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_14

    .line 65
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 66
    :cond_14
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    :cond_15
    iget v3, v0, Lx7/b;->c:I

    iget v6, v0, Lx7/b;->b:I

    if-lt v3, v6, :cond_16

    goto/16 :goto_c

    .line 68
    :cond_16
    iget-object v6, v0, Lx7/b;->g:[C

    aget-char v7, v6, v3

    const-string v8, "Malformed DN: "

    if-eq v7, v14, :cond_19

    aget-char v7, v6, v3

    if-ne v7, v13, :cond_17

    goto :goto_a

    .line 69
    :cond_17
    aget-char v6, v6, v3

    if-ne v6, v15, :cond_18

    goto :goto_a

    .line 70
    :cond_18
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-static {v8}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Lx7/b;->a:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_19
    :goto_a
    add-int/lit8 v3, v3, 0x1

    .line 71
    iput v3, v0, Lx7/b;->c:I

    .line 72
    invoke-virtual {v0}, Lx7/b;->c()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1a

    goto/16 :goto_0

    .line 73
    :cond_1a
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-static {v8}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Lx7/b;->a:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 74
    :cond_1b
    aget-char v8, v7, v6

    if-ne v8, v9, :cond_1c

    .line 75
    iget v6, v0, Lx7/b;->e:I

    invoke-virtual {v0}, Lx7/b;->b()C

    move-result v8

    aput-char v8, v7, v6

    goto :goto_b

    .line 76
    :cond_1c
    iget v8, v0, Lx7/b;->e:I

    aget-char v6, v7, v6

    aput-char v6, v7, v8

    .line 77
    :goto_b
    iget v6, v0, Lx7/b;->c:I

    add-int/2addr v6, v5

    iput v6, v0, Lx7/b;->c:I

    .line 78
    iget v6, v0, Lx7/b;->e:I

    add-int/2addr v6, v5

    iput v6, v0, Lx7/b;->e:I

    goto/16 :goto_7

    .line 79
    :cond_1d
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-static {v10}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Lx7/b;->a:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 80
    :cond_1e
    :goto_c
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_1f

    .line 81
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 82
    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-object v2, v0

    goto :goto_d

    :cond_1f
    move-object v2, v3

    .line 83
    :goto_d
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    .line 84
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Ljava/security/cert/X509Certificate;->getSubjectAlternativeNames()Ljava/util/Collection;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_e

    :catch_0
    move-exception v0

    move-object v7, v0

    .line 85
    const-class v0, Lx7/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v8, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v9, "Error parsing certificate."

    .line 86
    invoke-virtual {v0, v8, v9, v7}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v3

    :goto_e
    if-eqz v0, :cond_21

    .line 87
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_20
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 88
    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v8, v4, :cond_20

    .line 89
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 90
    invoke-virtual {v6, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 91
    :cond_21
    invoke-virtual {v6}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_22

    .line 92
    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v0

    new-array v3, v0, [Ljava/lang/String;

    .line 93
    invoke-virtual {v6, v3}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    :cond_22
    move-object/from16 v1, p0

    move-object/from16 v4, p1

    .line 94
    invoke-interface {v1, v4, v2, v3}, Lorg/apache/http/conn/ssl/X509HostnameVerifier;->verify(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public final verify(Ljava/lang/String;Ljavax/net/ssl/SSLSocket;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "host to verify is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object p2

    .line 3
    invoke-interface {p2}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    move-result-object p2

    const/4 v0, 0x0

    .line 4
    aget-object p2, p2, v0

    check-cast p2, Ljava/security/cert/X509Certificate;

    .line 5
    invoke-virtual {p0, p1, p2}, Lx7/a;->verify(Ljava/lang/String;Ljava/security/cert/X509Certificate;)V

    return-void
.end method

.method public final verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 1

    const/4 v0, 0x0

    .line 6
    :try_start_0
    invoke-interface {p2}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    move-result-object p2

    .line 7
    aget-object p2, p2, v0

    check-cast p2, Ljava/security/cert/X509Certificate;

    .line 8
    invoke-virtual {p0, p1, p2}, Lx7/a;->verify(Ljava/lang/String;Ljava/security/cert/X509Certificate;)V
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    return v0
.end method
