.class public final Lkotlin/reflect/jvm/internal/impl/protobuf/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/protobuf/e$a;
    }
.end annotation


# instance fields
.field final a:[B

.field b:I

.field c:I

.field d:I

.field e:I

.field private final f:Z

.field private g:I

.field private final h:Ljava/io/InputStream;

.field private i:I

.field private j:Z

.field private k:I

.field private l:I

.field private m:I

.field private n:Lkotlin/reflect/jvm/internal/impl/protobuf/e$a;


# direct methods
.method private constructor <init>(Ljava/io/InputStream;)V
    .locals 2

    .line 898
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 864
    iput-boolean v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->j:Z

    const v1, 0x7fffffff

    .line 876
    iput v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->l:I

    const/16 v1, 0x40

    .line 880
    iput v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->e:I

    const/high16 v1, 0x4000000

    .line 883
    iput v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->m:I

    const/4 v1, 0x0

    .line 1056
    iput-object v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->n:Lkotlin/reflect/jvm/internal/impl/protobuf/e$a;

    const/16 v1, 0x1000

    new-array v1, v1, [B

    .line 899
    iput-object v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->a:[B

    .line 900
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->b:I

    .line 901
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->c:I

    .line 902
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->k:I

    .line 903
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->h:Ljava/io/InputStream;

    .line 904
    iput-boolean v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->f:Z

    return-void
.end method

.method private constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/o;)V
    .locals 2

    .line 907
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 864
    iput-boolean v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->j:Z

    const v0, 0x7fffffff

    .line 876
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->l:I

    const/16 v0, 0x40

    .line 880
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->e:I

    const/high16 v0, 0x4000000

    .line 883
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->m:I

    const/4 v0, 0x0

    .line 1056
    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->n:Lkotlin/reflect/jvm/internal/impl/protobuf/e$a;

    .line 908
    iget-object v1, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/o;->d:[B

    iput-object v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->a:[B

    .line 909
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/o;->b()I

    move-result v1

    iput v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->c:I

    .line 910
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/o;->a()I

    move-result p1

    add-int/2addr v1, p1

    iput v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->b:I

    .line 911
    iget p1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->c:I

    neg-int p1, p1

    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->k:I

    .line 912
    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->h:Ljava/io/InputStream;

    const/4 p1, 0x1

    .line 913
    iput-boolean p1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->f:Z

    return-void
.end method

.method public static a(J)J
    .locals 4

    const/4 v0, 0x1

    ushr-long v0, p0, v0

    const-wide/16 v2, 0x1

    and-long/2addr p0, v2

    neg-long p0, p0

    xor-long/2addr p0, v0

    return-wide p0
.end method

.method public static a(Ljava/io/InputStream;)Lkotlin/reflect/jvm/internal/impl/protobuf/e;
    .locals 1

    .line 58
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/protobuf/e;

    invoke-direct {v0, p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method static a(Lkotlin/reflect/jvm/internal/impl/protobuf/o;)Lkotlin/reflect/jvm/internal/impl/protobuf/e;
    .locals 1

    .line 120
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/protobuf/e;

    invoke-direct {v0, p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/o;)V

    .line 127
    :try_start_0
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/o;->a()I

    move-result p0

    invoke-virtual {v0, p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->b(I)I
    :try_end_0
    .catch Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 136
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private e(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1081
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->f(I)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 1082
    :cond_0
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;->a()Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method

.method private f(I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1095
    :cond_0
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->c:I

    add-int v1, v0, p1

    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->b:I

    if-le v1, v2, :cond_7

    .line 1101
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->k:I

    add-int/2addr v1, v0

    add-int/2addr v1, p1

    iget v3, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->l:I

    const/4 v4, 0x0

    if-le v1, v3, :cond_1

    return v4

    .line 1110
    :cond_1
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->h:Ljava/io/InputStream;

    if-eqz v1, :cond_6

    if-lez v0, :cond_3

    if-le v2, v0, :cond_2

    .line 1114
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->a:[B

    sub-int/2addr v2, v0

    invoke-static {v1, v0, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1116
    :cond_2
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->k:I

    add-int/2addr v1, v0

    iput v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->k:I

    .line 1117
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->b:I

    sub-int/2addr v1, v0

    iput v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->b:I

    .line 1118
    iput v4, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->c:I

    .line 1121
    :cond_3
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->h:Ljava/io/InputStream;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->a:[B

    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->b:I

    array-length v3, v1

    sub-int/2addr v3, v2

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-eqz v0, :cond_5

    const/4 v1, -0x1

    if-lt v0, v1, :cond_5

    .line 1122
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->a:[B

    array-length v1, v1

    if-gt v0, v1, :cond_5

    if-lez v0, :cond_6

    .line 1128
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->b:I

    add-int/2addr v1, v0

    iput v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->b:I

    .line 1130
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->k:I

    add-int/2addr v0, p1

    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->m:I

    sub-int/2addr v0, v1

    if-gtz v0, :cond_4

    .line 1133
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->j()V

    .line 1134
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->b:I

    if-lt v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1131
    :cond_4
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;->h()Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 1123
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x66

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "InputStream#read(byte[]) returned invalid result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\nThe InputStream implementation is buggy."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    return v4

    .line 1096
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x4d

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "refillBuffer() called when "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " bytes were already available in buffer"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private g(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1272
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->b:I

    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->c:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_0

    if-ltz p1, :cond_0

    add-int/2addr v1, p1

    .line 1274
    iput v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->c:I

    return-void

    .line 1276
    :cond_0
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->h(I)V

    return-void
.end method

.method private h(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_2

    .line 1289
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->k:I

    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->c:I

    add-int v2, v0, v1

    add-int/2addr v2, p1

    iget v3, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->l:I

    if-gt v2, v3, :cond_1

    .line 1297
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->b:I

    sub-int v1, v0, v1

    .line 1298
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->c:I

    const/4 v0, 0x1

    .line 1302
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->e(I)V

    :goto_0
    sub-int v2, p1, v1

    .line 1303
    iget v3, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->b:I

    if-le v2, v3, :cond_0

    add-int/2addr v1, v3

    .line 1305
    iput v3, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->c:I

    .line 1306
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->e(I)V

    goto :goto_0

    .line 1309
    :cond_0
    iput v2, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->c:I

    return-void

    :cond_1
    sub-int/2addr v3, v0

    sub-int/2addr v3, v1

    .line 1291
    invoke-direct {p0, v3}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->g(I)V

    .line 1293
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;->a()Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 1286
    :cond_2
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;->b()Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method

.method private i()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x40

    if-ge v2, v3, :cond_1

    .line 778
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->l()B

    move-result v3

    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v2

    or-long/2addr v0, v4

    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_0

    return-wide v0

    :cond_0
    add-int/lit8 v2, v2, 0x7

    goto :goto_0

    .line 784
    :cond_1
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;->c()Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method private j()V
    .locals 3

    .line 1001
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->b:I

    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->g:I

    add-int/2addr v0, v1

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->b:I

    .line 1002
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->k:I

    add-int/2addr v1, v0

    .line 1003
    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->l:I

    if-le v1, v2, :cond_0

    sub-int/2addr v1, v2

    .line 1005
    iput v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->g:I

    sub-int/2addr v0, v1

    .line 1006
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->b:I

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 1008
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->g:I

    return-void
.end method

.method private k()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1041
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->c:I

    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->b:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->f(I)Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private l()B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1148
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->c:I

    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->b:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 1149
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->e(I)V

    .line 1151
    :cond_0
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->a:[B

    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->c:I

    aget-byte v0, v0, v1

    return v0
.end method


# virtual methods
.method public final a()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 149
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 150
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->i:I

    return v0

    .line 154
    :cond_0
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->d()I

    move-result v0

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->i:I

    .line 155
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/x;->b(I)I

    move-result v0

    if-eqz v0, :cond_1

    .line 160
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->i:I

    return v0

    .line 158
    :cond_1
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;->d()Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method public final a(Lkotlin/reflect/jvm/internal/impl/protobuf/r;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Lkotlin/reflect/jvm/internal/impl/protobuf/p;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lkotlin/reflect/jvm/internal/impl/protobuf/p;",
            ">(",
            "Lkotlin/reflect/jvm/internal/impl/protobuf/r<",
            "TT;>;",
            "Lkotlin/reflect/jvm/internal/impl/protobuf/f;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 489
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->d()I

    move-result v0

    .line 490
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->d:I

    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->e:I

    if-ge v1, v2, :cond_0

    .line 493
    invoke-virtual {p0, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->b(I)I

    move-result v0

    .line 494
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->d:I

    .line 495
    invoke-interface {p1, p0, p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/r;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    const/4 p2, 0x0

    .line 496
    invoke-virtual {p0, p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->a(I)V

    .line 497
    iget p2, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->d:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->d:I

    .line 498
    invoke-virtual {p0, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->c(I)V

    return-object p1

    .line 491
    :cond_0
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;->g()Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method

.method public final a(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 173
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->i:I

    if-ne v0, p1, :cond_0

    return-void

    .line 174
    :cond_0
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;->e()Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method

.method public final a(ILkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 224
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/x;->a(I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_7

    if-eq v0, v1, :cond_6

    const/4 v2, 0x2

    if-eq v0, v2, :cond_5

    const/4 v2, 0x3

    const/4 v3, 0x4

    if-eq v0, v2, :cond_2

    if-eq v0, v3, :cond_1

    const/4 v2, 0x5

    if-ne v0, v2, :cond_0

    .line 256
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->f()I

    move-result v0

    .line 257
    invoke-virtual {p2, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->e(I)V

    .line 2410
    invoke-virtual {p2, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->g(I)V

    return v1

    .line 262
    :cond_0
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;->f()Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :cond_1
    const/4 p1, 0x0

    return p1

    .line 244
    :cond_2
    invoke-virtual {p2, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->e(I)V

    .line 2286
    :cond_3
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->a()I

    move-result v0

    if-eqz v0, :cond_4

    .line 2287
    invoke-virtual {p0, v0, p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->a(ILkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 246
    :cond_4
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/x;->b(I)I

    move-result p1

    invoke-static {p1, v3}, Lkotlin/reflect/jvm/internal/impl/protobuf/x;->a(II)I

    move-result p1

    .line 248
    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->a(I)V

    .line 249
    invoke-virtual {p2, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->e(I)V

    return v1

    .line 238
    :cond_5
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->c()Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    move-result-object v0

    .line 239
    invoke-virtual {p2, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->e(I)V

    .line 240
    invoke-virtual {p2, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/d;)V

    return v1

    .line 232
    :cond_6
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->g()J

    move-result-wide v2

    .line 233
    invoke-virtual {p2, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->e(I)V

    .line 1405
    invoke-virtual {p2, v2, v3}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->e(J)V

    return v1

    .line 1343
    :cond_7
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->e()J

    move-result-wide v2

    .line 227
    invoke-virtual {p2, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->e(I)V

    .line 1385
    invoke-virtual {p2, v2, v3}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->c(J)V

    return v1
.end method

.method public final b(I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    if-ltz p1, :cond_1

    .line 988
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->k:I

    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->c:I

    add-int/2addr v0, v1

    add-int/2addr p1, v0

    .line 989
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->l:I

    if-gt p1, v0, :cond_0

    .line 993
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->l:I

    .line 995
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->j()V

    return v0

    .line 991
    :cond_0
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;->a()Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 986
    :cond_1
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;->b()Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method

.method public final b()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 363
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->e()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final c()Lkotlin/reflect/jvm/internal/impl/protobuf/d;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 504
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->d()I

    move-result v0

    .line 505
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->b:I

    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->c:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_1

    if-lez v0, :cond_1

    .line 508
    iget-boolean v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->f:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->j:Z

    if-eqz v1, :cond_0

    new-instance v1, Lkotlin/reflect/jvm/internal/impl/protobuf/c;

    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->a:[B

    invoke-direct {v1, v3, v2, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/c;-><init>([BII)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->a:[B

    invoke-static {v1, v2, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->a([BII)Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    move-result-object v1

    .line 511
    :goto_0
    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->c:I

    add-int/2addr v2, v0

    iput v2, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->c:I

    return-object v1

    :cond_1
    if-nez v0, :cond_2

    .line 514
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->b:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    return-object v0

    .line 517
    :cond_2
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/protobuf/o;

    invoke-virtual {p0, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->d(I)[B

    move-result-object v0

    invoke-direct {v1, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/o;-><init>([B)V

    return-object v1
.end method

.method public final c(I)V
    .locals 0

    .line 1018
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->l:I

    .line 1019
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->j()V

    return-void
.end method

.method public final d()I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 602
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->c:I

    .line 604
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->b:I

    if-eq v1, v0, :cond_6

    .line 608
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->a:[B

    add-int/lit8 v3, v0, 0x1

    .line 610
    aget-byte v0, v2, v0

    if-ltz v0, :cond_0

    .line 611
    iput v3, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->c:I

    return v0

    :cond_0
    sub-int/2addr v1, v3

    const/16 v4, 0x9

    if-lt v1, v4, :cond_6

    add-int/lit8 v1, v3, 0x1

    .line 615
    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x7

    xor-int/2addr v0, v3

    int-to-long v3, v0

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-gez v7, :cond_1

    const-wide/16 v5, -0x80

    :goto_0
    xor-long v2, v3, v5

    long-to-int v0, v2

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v1, 0x1

    .line 617
    aget-byte v1, v2, v1

    shl-int/lit8 v1, v1, 0xe

    xor-int/2addr v0, v1

    int-to-long v7, v0

    cmp-long v1, v7, v5

    if-ltz v1, :cond_3

    const-wide/16 v0, 0x3f80

    xor-long/2addr v0, v7

    long-to-int v0, v0

    :cond_2
    move v1, v3

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v3, 0x1

    .line 619
    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x15

    xor-int/2addr v0, v3

    int-to-long v3, v0

    cmp-long v7, v3, v5

    if-gez v7, :cond_4

    const-wide/32 v5, -0x1fc080

    goto :goto_0

    :cond_4
    add-int/lit8 v3, v1, 0x1

    .line 622
    aget-byte v1, v2, v1

    shl-int/lit8 v4, v1, 0x1c

    xor-int/2addr v0, v4

    int-to-long v4, v0

    const-wide/32 v6, 0xfe03f80

    xor-long/2addr v4, v6

    long-to-int v0, v4

    if-gez v1, :cond_2

    add-int/lit8 v1, v3, 0x1

    .line 625
    aget-byte v3, v2, v3

    if-gez v3, :cond_5

    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v2, v1

    if-gez v1, :cond_2

    add-int/lit8 v1, v3, 0x1

    aget-byte v3, v2, v3

    if-gez v3, :cond_5

    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v2, v1

    if-gez v1, :cond_2

    add-int/lit8 v1, v3, 0x1

    aget-byte v2, v2, v3

    if-ltz v2, :cond_6

    .line 634
    :cond_5
    :goto_1
    iput v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->c:I

    return v0

    .line 637
    :cond_6
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->i()J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method final d(I)[B
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-gtz p1, :cond_1

    if-nez p1, :cond_0

    .line 1177
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/protobuf/j;->a:[B

    return-object p1

    .line 1179
    :cond_0
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;->b()Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 1183
    :cond_1
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->k:I

    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->c:I

    add-int v2, v0, v1

    add-int/2addr v2, p1

    iget v3, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->l:I

    if-gt v2, v3, :cond_9

    const/16 v2, 0x1000

    const/4 v3, 0x0

    if-ge p1, v2, :cond_3

    .line 1195
    new-array v0, p1, [B

    .line 1196
    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->b:I

    sub-int/2addr v2, v1

    .line 1197
    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->a:[B

    invoke-static {v4, v1, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1198
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->b:I

    iput v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->c:I

    sub-int/2addr p1, v2

    sub-int/2addr v1, v1

    if-ge v1, p1, :cond_2

    .line 3068
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->e(I)V

    .line 1204
    :cond_2
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->a:[B

    invoke-static {v1, v3, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1205
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->c:I

    return-object v0

    .line 1220
    :cond_3
    iget v4, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->b:I

    add-int/2addr v0, v4

    .line 1223
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->k:I

    .line 1224
    iput v3, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->c:I

    .line 1225
    iput v3, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->b:I

    sub-int/2addr v4, v1

    sub-int v0, p1, v4

    .line 1229
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    if-lez v0, :cond_7

    .line 1232
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v6

    new-array v7, v6, [B

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v6, :cond_6

    .line 1235
    iget-object v9, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->h:Ljava/io/InputStream;

    const/4 v10, -0x1

    if-nez v9, :cond_4

    const/4 v9, -0x1

    goto :goto_2

    :cond_4
    sub-int v11, v6, v8

    invoke-virtual {v9, v7, v8, v11}, Ljava/io/InputStream;->read([BII)I

    move-result v9

    :goto_2
    if-eq v9, v10, :cond_5

    .line 1240
    iget v10, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->k:I

    add-int/2addr v10, v9

    iput v10, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->k:I

    add-int/2addr v8, v9

    goto :goto_1

    .line 1238
    :cond_5
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;->a()Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :cond_6
    sub-int/2addr v0, v6

    .line 1244
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1248
    :cond_7
    new-array p1, p1, [B

    .line 1252
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->a:[B

    invoke-static {v0, v1, p1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1255
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 1256
    array-length v2, v1

    invoke-static {v1, v3, p1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1257
    array-length v1, v1

    add-int/2addr v4, v1

    goto :goto_3

    :cond_8
    return-object p1

    :cond_9
    sub-int/2addr v3, v0

    sub-int/2addr v3, v1

    .line 1185
    invoke-direct {p0, v3}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->g(I)V

    .line 1187
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;->a()Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method

.method public final e()J
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 728
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->c:I

    .line 730
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->b:I

    if-eq v1, v0, :cond_9

    .line 734
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->a:[B

    add-int/lit8 v3, v0, 0x1

    .line 737
    aget-byte v0, v2, v0

    if-ltz v0, :cond_0

    .line 738
    iput v3, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->c:I

    int-to-long v0, v0

    return-wide v0

    :cond_0
    sub-int/2addr v1, v3

    const/16 v4, 0x9

    if-lt v1, v4, :cond_9

    add-int/lit8 v1, v3, 0x1

    .line 742
    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x7

    xor-int/2addr v0, v3

    int-to-long v3, v0

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-gez v0, :cond_1

    const-wide/16 v5, -0x80

    :goto_0
    xor-long v2, v3, v5

    goto/16 :goto_3

    :cond_1
    add-int/lit8 v0, v1, 0x1

    .line 744
    aget-byte v1, v2, v1

    shl-int/lit8 v1, v1, 0xe

    int-to-long v7, v1

    xor-long/2addr v3, v7

    cmp-long v1, v3, v5

    if-ltz v1, :cond_2

    const-wide/16 v1, 0x3f80

    :goto_1
    xor-long v2, v3, v1

    move v1, v0

    goto/16 :goto_3

    :cond_2
    add-int/lit8 v1, v0, 0x1

    .line 746
    aget-byte v0, v2, v0

    shl-int/lit8 v0, v0, 0x15

    int-to-long v7, v0

    xor-long/2addr v3, v7

    cmp-long v0, v3, v5

    if-gez v0, :cond_3

    const-wide/32 v5, -0x1fc080

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v1, 0x1

    .line 748
    aget-byte v1, v2, v1

    int-to-long v7, v1

    const/16 v1, 0x1c

    shl-long/2addr v7, v1

    xor-long/2addr v3, v7

    cmp-long v1, v3, v5

    if-ltz v1, :cond_4

    const-wide/32 v1, 0xfe03f80

    goto :goto_1

    :cond_4
    add-int/lit8 v1, v0, 0x1

    .line 750
    aget-byte v0, v2, v0

    int-to-long v7, v0

    const/16 v0, 0x23

    shl-long/2addr v7, v0

    xor-long/2addr v3, v7

    cmp-long v0, v3, v5

    if-gez v0, :cond_5

    const-wide v5, -0x7f01fc080L

    goto :goto_0

    :cond_5
    add-int/lit8 v0, v1, 0x1

    .line 752
    aget-byte v1, v2, v1

    int-to-long v7, v1

    const/16 v1, 0x2a

    shl-long/2addr v7, v1

    xor-long/2addr v3, v7

    cmp-long v1, v3, v5

    if-ltz v1, :cond_6

    const-wide v1, 0x3f80fe03f80L

    goto :goto_1

    :cond_6
    add-int/lit8 v1, v0, 0x1

    .line 754
    aget-byte v0, v2, v0

    int-to-long v7, v0

    const/16 v0, 0x31

    shl-long/2addr v7, v0

    xor-long/2addr v3, v7

    cmp-long v0, v3, v5

    if-gez v0, :cond_7

    const-wide v5, -0x1fc07f01fc080L

    goto :goto_0

    :cond_7
    add-int/lit8 v0, v1, 0x1

    .line 758
    aget-byte v1, v2, v1

    int-to-long v7, v1

    const/16 v1, 0x38

    shl-long/2addr v7, v1

    xor-long/2addr v3, v7

    const-wide v7, 0xfe03f80fe03f80L

    xor-long/2addr v3, v7

    cmp-long v1, v3, v5

    if-gez v1, :cond_8

    add-int/lit8 v1, v0, 0x1

    .line 762
    aget-byte v0, v2, v0

    int-to-long v7, v0

    cmp-long v0, v7, v5

    if-ltz v0, :cond_9

    goto :goto_2

    :cond_8
    move v1, v0

    :goto_2
    move-wide v2, v3

    .line 767
    :goto_3
    iput v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->c:I

    return-wide v2

    .line 770
    :cond_9
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->i()J

    move-result-wide v0

    return-wide v0
.end method

.method public final f()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 789
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->c:I

    .line 792
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->b:I

    sub-int/2addr v1, v0

    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    .line 793
    invoke-direct {p0, v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->e(I)V

    .line 794
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->c:I

    .line 797
    :cond_0
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->a:[B

    add-int/lit8 v2, v0, 0x4

    .line 798
    iput v2, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->c:I

    .line 799
    aget-byte v2, v1, v0

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, v0, 0x1

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, v0, 0x2

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x3

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v2

    return v0
.end method

.method public final g()J
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 807
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->c:I

    .line 810
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->b:I

    sub-int/2addr v1, v0

    const/16 v2, 0x8

    if-ge v1, v2, :cond_0

    .line 811
    invoke-direct {p0, v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->e(I)V

    .line 812
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->c:I

    .line 815
    :cond_0
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->a:[B

    add-int/lit8 v3, v0, 0x8

    .line 816
    iput v3, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->c:I

    .line 817
    aget-byte v3, v1, v0

    int-to-long v3, v3

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    add-int/lit8 v7, v0, 0x1

    aget-byte v7, v1, v7

    int-to-long v7, v7

    and-long/2addr v7, v5

    shl-long/2addr v7, v2

    or-long v2, v3, v7

    add-int/lit8 v4, v0, 0x2

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x10

    shl-long/2addr v7, v4

    or-long/2addr v2, v7

    add-int/lit8 v4, v0, 0x3

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x18

    shl-long/2addr v7, v4

    or-long/2addr v2, v7

    add-int/lit8 v4, v0, 0x4

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x20

    shl-long/2addr v7, v4

    or-long/2addr v2, v7

    add-int/lit8 v4, v0, 0x5

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x28

    shl-long/2addr v7, v4

    or-long/2addr v2, v7

    add-int/lit8 v4, v0, 0x6

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x30

    shl-long/2addr v7, v4

    or-long/2addr v2, v7

    add-int/lit8 v0, v0, 0x7

    aget-byte v0, v1, v0

    int-to-long v0, v0

    and-long/2addr v0, v5

    const/16 v4, 0x38

    shl-long/2addr v0, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public final h()I
    .locals 3

    .line 1027
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->l:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    const/4 v0, -0x1

    return v0

    .line 1031
    :cond_0
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->k:I

    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->c:I

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    return v0
.end method
