.class public final Lcom/esotericsoftware/kryo/a/d;
.super Lcom/esotericsoftware/kryo/a/c;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/esotericsoftware/kryo/a/c;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/esotericsoftware/kryo/a/c;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/esotericsoftware/kryo/a/c;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/esotericsoftware/kryo/a/c;-><init>(Ljava/io/OutputStream;I)V

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 2

    .line 98
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/a/d;->flush()V

    .line 99
    sget-boolean v0, Lcom/esotericsoftware/b/a;->e:Z

    if-eqz v0, :cond_0

    const-string v0, "kryo"

    const-string v1, "End chunk."

    invoke-static {v0, v1}, Lcom/esotericsoftware/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/a/d;->a()Ljava/io/OutputStream;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 103
    new-instance v1, Lcom/esotericsoftware/kryo/KryoException;

    invoke-direct {v1, v0}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final flush()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 54
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/a/d;->b()I

    move-result v0

    if-lez v0, :cond_5

    .line 1066
    :try_start_0
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/a/d;->b()I

    move-result v0

    .line 1067
    sget-boolean v1, Lcom/esotericsoftware/b/a;->e:Z

    if-eqz v1, :cond_0

    const-string v1, "kryo"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Write chunk: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/esotericsoftware/kryo/c/n;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/esotericsoftware/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1068
    :cond_0
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/a/d;->a()Ljava/io/OutputStream;

    move-result-object v1

    and-int/lit8 v2, v0, -0x80

    if-nez v2, :cond_1

    .line 1070
    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0

    :cond_1
    and-int/lit8 v2, v0, 0x7f

    or-int/lit16 v2, v2, 0x80

    .line 1073
    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write(I)V

    ushr-int/lit8 v0, v0, 0x7

    and-int/lit8 v2, v0, -0x80

    if-nez v2, :cond_2

    .line 1076
    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0

    :cond_2
    and-int/lit8 v2, v0, 0x7f

    or-int/lit16 v2, v2, 0x80

    .line 1079
    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write(I)V

    ushr-int/lit8 v0, v0, 0x7

    and-int/lit8 v2, v0, -0x80

    if-nez v2, :cond_3

    .line 1082
    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0

    :cond_3
    and-int/lit8 v2, v0, 0x7f

    or-int/lit16 v2, v2, 0x80

    .line 1085
    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write(I)V

    ushr-int/lit8 v0, v0, 0x7

    and-int/lit8 v2, v0, -0x80

    if-nez v2, :cond_4

    .line 1088
    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0

    :cond_4
    and-int/lit8 v2, v0, 0x7f

    or-int/lit16 v2, v2, 0x80

    .line 1091
    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write(I)V

    ushr-int/lit8 v0, v0, 0x7

    .line 1093
    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 57
    :goto_0
    invoke-super {p0}, Lcom/esotericsoftware/kryo/a/c;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 59
    new-instance v1, Lcom/esotericsoftware/kryo/KryoException;

    invoke-direct {v1, v0}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 62
    :cond_5
    :goto_1
    invoke-super {p0}, Lcom/esotericsoftware/kryo/a/c;->flush()V

    return-void
.end method
