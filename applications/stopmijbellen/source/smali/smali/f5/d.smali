.class public Lf5/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf5/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf5/d$a;
    }
.end annotation


# static fields
.field public static final d:Ljava/nio/charset/Charset;


# instance fields
.field public final a:Ljava/io/File;

.field public final b:I

.field public c:Lf5/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "UTF-8"

    .line 1
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lf5/d;->d:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lf5/d;->a:Ljava/io/File;

    .line 3
    iput p2, p0, Lf5/d;->b:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lf5/d;->c:Lf5/c;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {v0}, Lf5/c;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lf5/d;->c:Lf5/c;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lf5/d;->d()[B

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Ljava/lang/String;

    sget-object v2, Lf5/d;->d:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public c(JLjava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lf5/d;->c:Lf5/c;

    if-nez v0, :cond_0

    .line 2
    :try_start_0
    new-instance v0, Lf5/c;

    iget-object v1, p0, Lf5/d;->a:Ljava/io/File;

    invoke-direct {v0, v1}, Lf5/c;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lf5/d;->c:Lf5/c;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3
    :catch_0
    iget-object v0, p0, Lf5/d;->a:Ljava/io/File;

    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    :cond_0
    :goto_0
    const-string v0, " "

    .line 4
    iget-object v1, p0, Lf5/d;->c:Lf5/c;

    if-nez v1, :cond_1

    goto :goto_2

    :cond_1
    if-nez p3, :cond_2

    const-string p3, "null"

    .line 5
    :cond_2
    :try_start_1
    iget v1, p0, Lf5/d;->b:I

    div-int/lit8 v1, v1, 0x4

    .line 6
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v1, :cond_3

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {p3, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    :cond_3
    const-string v1, "\r"

    .line 8
    invoke-virtual {p3, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v1, "\n"

    .line 9
    invoke-virtual {p3, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 10
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%d %s%n"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object p3, v2, p1

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lf5/d;->d:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 11
    iget-object p2, p0, Lf5/d;->c:Lf5/c;

    invoke-virtual {p2, p1}, Lf5/c;->k([B)V

    .line 12
    :goto_1
    iget-object p1, p0, Lf5/d;->c:Lf5/c;

    invoke-virtual {p1}, Lf5/c;->p()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lf5/d;->c:Lf5/c;

    invoke-virtual {p1}, Lf5/c;->J()I

    move-result p1

    iget p2, p0, Lf5/d;->b:I

    if-le p1, p2, :cond_4

    .line 13
    iget-object p1, p0, Lf5/d;->c:Lf5/c;

    invoke-virtual {p1}, Lf5/c;->A()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    :cond_4
    :goto_2
    return-void
.end method

.method public d()[B
    .locals 10

    .line 1
    iget-object v0, p0, Lf5/d;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    :goto_0
    move-object v4, v1

    goto :goto_4

    .line 2
    :cond_0
    iget-object v0, p0, Lf5/d;->c:Lf5/c;

    if-nez v0, :cond_1

    .line 3
    :try_start_0
    new-instance v0, Lf5/c;

    iget-object v3, p0, Lf5/d;->a:Ljava/io/File;

    invoke-direct {v0, v3}, Lf5/c;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lf5/d;->c:Lf5/c;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 4
    :catch_0
    iget-object v0, p0, Lf5/d;->a:Ljava/io/File;

    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 5
    :cond_1
    :goto_1
    iget-object v0, p0, Lf5/d;->c:Lf5/c;

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x1

    new-array v3, v3, [I

    aput v2, v3, v2

    .line 6
    invoke-virtual {v0}, Lf5/c;->J()I

    move-result v0

    new-array v0, v0, [B

    .line 7
    :try_start_1
    iget-object v4, p0, Lf5/d;->c:Lf5/c;

    .line 8
    monitor-enter v4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 9
    :try_start_2
    iget-object v5, v4, Lf5/c;->d:Lf5/c$b;

    iget v5, v5, Lf5/c$b;->a:I

    const/4 v6, 0x0

    .line 10
    :goto_2
    iget v7, v4, Lf5/c;->c:I

    if-ge v6, v7, :cond_3

    .line 11
    invoke-virtual {v4, v5}, Lf5/c;->r(I)Lf5/c$b;

    move-result-object v5

    .line 12
    new-instance v7, Lf5/c$c;

    invoke-direct {v7, v4, v5, v1}, Lf5/c$c;-><init>(Lf5/c;Lf5/c$b;Lf5/c$a;)V

    iget v8, v5, Lf5/c$b;->b:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 13
    :try_start_3
    aget v9, v3, v2

    invoke-virtual {v7, v0, v9, v8}, Lf5/c$c;->read([BII)I

    .line 14
    aget v9, v3, v2

    add-int/2addr v9, v8

    aput v9, v3, v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 15
    :try_start_4
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 16
    iget v7, v5, Lf5/c$b;->a:I

    add-int/lit8 v7, v7, 0x4

    iget v5, v5, Lf5/c$b;->b:I

    add-int/2addr v7, v5

    invoke-virtual {v4, v7}, Lf5/c;->K(I)I

    move-result v5

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :catchall_0
    move-exception v5

    .line 17
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 18
    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 19
    :cond_3
    :try_start_5
    monitor-exit v4

    goto :goto_3

    :catchall_1
    move-exception v5

    monitor-exit v4

    throw v5
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 20
    :catch_1
    :goto_3
    new-instance v4, Lf5/d$a;

    aget v3, v3, v2

    invoke-direct {v4, v0, v3}, Lf5/d$a;-><init>([BI)V

    :goto_4
    if-nez v4, :cond_4

    return-object v1

    .line 21
    :cond_4
    iget v0, v4, Lf5/d$a;->b:I

    new-array v1, v0, [B

    .line 22
    iget-object v3, v4, Lf5/d$a;->a:[B

    invoke-static {v3, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method
