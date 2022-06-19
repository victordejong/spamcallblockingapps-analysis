.class public final Lr9/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lr9/e$d;,
        Lr9/e$c;,
        Lr9/e$e;
    }
.end annotation


# static fields
.field public static final u:Ljava/util/regex/Pattern;


# instance fields
.field public final a:Lw9/a;

.field public final b:Ljava/io/File;

.field public final c:Ljava/io/File;

.field public final d:Ljava/io/File;

.field public final e:Ljava/io/File;

.field public final f:I

.field public g:J

.field public final h:I

.field public i:J

.field public j:Laa/g;

.field public final k:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lr9/e$d;",
            ">;"
        }
    .end annotation
.end field

.field public l:I

.field public m:Z

.field public n:Z

.field public o:Z

.field public p:Z

.field public q:Z

.field public r:J

.field public final s:Ljava/util/concurrent/Executor;

.field public final t:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lr9/e;

    const-string v0, "[a-z0-9_-]{1,120}"

    .line 2
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lr9/e;->u:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lw9/a;Ljava/io/File;IIJLjava/util/concurrent/Executor;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lr9/e;->i:J

    .line 3
    new-instance v2, Ljava/util/LinkedHashMap;

    const/4 v3, 0x0

    const/high16 v4, 0x3f400000    # 0.75f

    const/4 v5, 0x1

    invoke-direct {v2, v3, v4, v5}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v2, p0, Lr9/e;->k:Ljava/util/LinkedHashMap;

    .line 4
    iput-wide v0, p0, Lr9/e;->r:J

    .line 5
    new-instance v0, Lr9/e$a;

    invoke-direct {v0, p0}, Lr9/e$a;-><init>(Lr9/e;)V

    iput-object v0, p0, Lr9/e;->t:Ljava/lang/Runnable;

    .line 6
    iput-object p1, p0, Lr9/e;->a:Lw9/a;

    .line 7
    iput-object p2, p0, Lr9/e;->b:Ljava/io/File;

    .line 8
    iput p3, p0, Lr9/e;->f:I

    .line 9
    new-instance p1, Ljava/io/File;

    const-string p3, "journal"

    invoke-direct {p1, p2, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lr9/e;->c:Ljava/io/File;

    .line 10
    new-instance p1, Ljava/io/File;

    const-string p3, "journal.tmp"

    invoke-direct {p1, p2, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lr9/e;->d:Ljava/io/File;

    .line 11
    new-instance p1, Ljava/io/File;

    const-string p3, "journal.bkp"

    invoke-direct {p1, p2, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lr9/e;->e:Ljava/io/File;

    .line 12
    iput p4, p0, Lr9/e;->h:I

    .line 13
    iput-wide p5, p0, Lr9/e;->g:J

    .line 14
    iput-object p7, p0, Lr9/e;->s:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final A()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lr9/e;->a:Lw9/a;

    iget-object v1, p0, Lr9/e;->d:Ljava/io/File;

    check-cast v0, Lw9/a$a;

    invoke-virtual {v0, v1}, Lw9/a$a;->a(Ljava/io/File;)V

    .line 2
    iget-object v0, p0, Lr9/e;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr9/e$d;

    .line 4
    iget-object v2, v1, Lr9/e$d;->f:Lr9/e$c;

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 5
    :goto_1
    iget v2, p0, Lr9/e;->h:I

    if-ge v3, v2, :cond_0

    .line 6
    iget-wide v4, p0, Lr9/e;->i:J

    iget-object v2, v1, Lr9/e$d;->b:[J

    aget-wide v6, v2, v3

    add-long/2addr v4, v6

    iput-wide v4, p0, Lr9/e;->i:J

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 7
    iput-object v2, v1, Lr9/e$d;->f:Lr9/e$c;

    .line 8
    :goto_2
    iget v2, p0, Lr9/e;->h:I

    if-ge v3, v2, :cond_2

    .line 9
    iget-object v2, p0, Lr9/e;->a:Lw9/a;

    iget-object v4, v1, Lr9/e$d;->c:[Ljava/io/File;

    aget-object v4, v4, v3

    check-cast v2, Lw9/a$a;

    invoke-virtual {v2, v4}, Lw9/a$a;->a(Ljava/io/File;)V

    .line 10
    iget-object v2, p0, Lr9/e;->a:Lw9/a;

    iget-object v4, v1, Lr9/e$d;->d:[Ljava/io/File;

    aget-object v4, v4, v3

    check-cast v2, Lw9/a$a;

    invoke-virtual {v2, v4}, Lw9/a$a;->a(Ljava/io/File;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 11
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final B()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, ", "

    .line 1
    iget-object v1, p0, Lr9/e;->a:Lw9/a;

    iget-object v2, p0, Lr9/e;->c:Ljava/io/File;

    check-cast v1, Lw9/a$a;

    invoke-virtual {v1, v2}, Lw9/a$a;->d(Ljava/io/File;)Laa/y;

    move-result-object v1

    .line 2
    new-instance v2, Laa/t;

    invoke-direct {v2, v1}, Laa/t;-><init>(Laa/y;)V

    .line 3
    :try_start_0
    invoke-virtual {v2}, Laa/t;->t()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-virtual {v2}, Laa/t;->t()Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-virtual {v2}, Laa/t;->t()Ljava/lang/String;

    move-result-object v4

    .line 6
    invoke-virtual {v2}, Laa/t;->t()Ljava/lang/String;

    move-result-object v5

    .line 7
    invoke-virtual {v2}, Laa/t;->t()Ljava/lang/String;

    move-result-object v6

    const-string v7, "libcore.io.DiskLruCache"

    .line 8
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "1"

    .line 9
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget v7, p0, Lr9/e;->f:I

    .line 10
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, p0, Lr9/e;->h:I

    .line 11
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, ""

    .line 12
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_1

    const/4 v0, 0x0

    .line 13
    :goto_0
    :try_start_1
    invoke-virtual {v2}, Laa/t;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lr9/e;->D(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 14
    :catch_0
    :try_start_2
    iget-object v1, p0, Lr9/e;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lr9/e;->l:I

    .line 15
    invoke-virtual {v2}, Laa/t;->v()Z

    move-result v0

    if-nez v0, :cond_0

    .line 16
    invoke-virtual {p0}, Lr9/e;->J()V

    goto :goto_1

    .line 17
    :cond_0
    invoke-virtual {p0}, Lr9/e;->s()Laa/g;

    move-result-object v0

    iput-object v0, p0, Lr9/e;->j:Laa/g;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 18
    :goto_1
    invoke-static {v2}, Lq9/c;->d(Ljava/io/Closeable;)V

    return-void

    .line 19
    :cond_1
    :try_start_3
    new-instance v4, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "unexpected journal header: ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    .line 20
    invoke-static {v2}, Lq9/c;->d(Ljava/io/Closeable;)V

    throw v0
.end method

.method public final D(Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x20

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const-string v2, "unexpected journal line: "

    const/4 v3, -0x1

    if-eq v1, v3, :cond_8

    add-int/lit8 v4, v1, 0x1

    .line 2
    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 3
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x6

    if-ne v1, v5, :cond_1

    const-string v5, "REMOVE"

    .line 4
    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 5
    iget-object p1, p0, Lr9/e;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {p1, v4}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 6
    :cond_0
    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 7
    :cond_1
    iget-object v5, p0, Lr9/e;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lr9/e$d;

    if-nez v5, :cond_2

    .line 8
    new-instance v5, Lr9/e$d;

    invoke-direct {v5, p0, v4}, Lr9/e$d;-><init>(Lr9/e;Ljava/lang/String;)V

    .line 9
    iget-object v6, p0, Lr9/e;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v6, v4, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const/4 v4, 0x5

    if-eq v0, v3, :cond_4

    if-ne v1, v4, :cond_4

    const-string v6, "CLEAN"

    .line 10
    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 11
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 12
    iput-boolean v1, v5, Lr9/e$d;->e:Z

    const/4 v0, 0x0

    .line 13
    iput-object v0, v5, Lr9/e$d;->f:Lr9/e$c;

    .line 14
    array-length v1, p1

    iget-object v2, v5, Lr9/e$d;->h:Lr9/e;

    iget v2, v2, Lr9/e;->h:I

    if-ne v1, v2, :cond_3

    const/4 v1, 0x0

    .line 15
    :goto_0
    :try_start_0
    array-length v2, p1

    if-ge v1, v2, :cond_6

    .line 16
    iget-object v2, v5, Lr9/e$d;->b:[J

    aget-object v3, p1, v1

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    aput-wide v3, v2, v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 17
    :catch_0
    invoke-virtual {v5, p1}, Lr9/e$d;->a([Ljava/lang/String;)Ljava/io/IOException;

    throw v0

    .line 18
    :cond_3
    invoke-virtual {v5, p1}, Lr9/e$d;->a([Ljava/lang/String;)Ljava/io/IOException;

    throw v0

    :cond_4
    if-ne v0, v3, :cond_5

    if-ne v1, v4, :cond_5

    const-string v4, "DIRTY"

    .line 19
    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 20
    new-instance p1, Lr9/e$c;

    invoke-direct {p1, p0, v5}, Lr9/e$c;-><init>(Lr9/e;Lr9/e$d;)V

    iput-object p1, v5, Lr9/e$d;->f:Lr9/e$c;

    goto :goto_1

    :cond_5
    if-ne v0, v3, :cond_7

    const/4 v0, 0x4

    if-ne v1, v0, :cond_7

    const-string v0, "READ"

    .line 21
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    :goto_1
    return-void

    .line 22
    :cond_7
    new-instance v0, Ljava/io/IOException;

    invoke-static {v2, p1}, Lcom/google/android/gms/internal/ads/a;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 23
    :cond_8
    new-instance v0, Ljava/io/IOException;

    invoke-static {v2, p1}, Lcom/google/android/gms/internal/ads/a;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized J()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lr9/e;->j:Laa/g;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Laa/x;->close()V

    .line 3
    :cond_0
    iget-object v0, p0, Lr9/e;->a:Lw9/a;

    iget-object v1, p0, Lr9/e;->d:Ljava/io/File;

    check-cast v0, Lw9/a$a;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4
    :try_start_1
    invoke-static {v1}, Laa/o;->c(Ljava/io/File;)Laa/x;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 5
    :catch_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 6
    invoke-static {v1}, Laa/o;->c(Ljava/io/File;)Laa/x;

    move-result-object v0

    .line 7
    :goto_0
    sget-object v1, Laa/o;->a:Ljava/util/logging/Logger;

    .line 8
    new-instance v1, Laa/r;

    invoke-direct {v1, v0}, Laa/r;-><init>(Laa/x;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    const-string v0, "libcore.io.DiskLruCache"

    .line 9
    invoke-virtual {v1, v0}, Laa/r;->R(Ljava/lang/String;)Laa/g;

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Laa/r;->w(I)Laa/g;

    const-string v2, "1"

    .line 10
    invoke-virtual {v1, v2}, Laa/r;->R(Ljava/lang/String;)Laa/g;

    invoke-virtual {v1, v0}, Laa/r;->w(I)Laa/g;

    .line 11
    iget v2, p0, Lr9/e;->f:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Laa/r;->S(J)Laa/g;

    invoke-virtual {v1, v0}, Laa/r;->w(I)Laa/g;

    .line 12
    iget v2, p0, Lr9/e;->h:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Laa/r;->S(J)Laa/g;

    invoke-virtual {v1, v0}, Laa/r;->w(I)Laa/g;

    .line 13
    invoke-virtual {v1, v0}, Laa/r;->w(I)Laa/g;

    .line 14
    iget-object v2, p0, Lr9/e;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lr9/e$d;

    .line 15
    iget-object v4, v3, Lr9/e$d;->f:Lr9/e$c;

    const/16 v5, 0x20

    if-eqz v4, :cond_1

    const-string v4, "DIRTY"

    .line 16
    invoke-virtual {v1, v4}, Laa/r;->R(Ljava/lang/String;)Laa/g;

    invoke-virtual {v1, v5}, Laa/r;->w(I)Laa/g;

    .line 17
    iget-object v3, v3, Lr9/e$d;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Laa/r;->R(Ljava/lang/String;)Laa/g;

    .line 18
    invoke-virtual {v1, v0}, Laa/r;->w(I)Laa/g;

    goto :goto_1

    :cond_1
    const-string v4, "CLEAN"

    .line 19
    invoke-virtual {v1, v4}, Laa/r;->R(Ljava/lang/String;)Laa/g;

    invoke-virtual {v1, v5}, Laa/r;->w(I)Laa/g;

    .line 20
    iget-object v4, v3, Lr9/e$d;->a:Ljava/lang/String;

    invoke-virtual {v1, v4}, Laa/r;->R(Ljava/lang/String;)Laa/g;

    .line 21
    invoke-virtual {v3, v1}, Lr9/e$d;->c(Laa/g;)V

    .line 22
    invoke-virtual {v1, v0}, Laa/r;->w(I)Laa/g;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 23
    :cond_2
    :try_start_4
    invoke-virtual {v1}, Laa/r;->close()V

    .line 24
    iget-object v0, p0, Lr9/e;->a:Lw9/a;

    iget-object v1, p0, Lr9/e;->c:Ljava/io/File;

    check-cast v0, Lw9/a$a;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 26
    iget-object v0, p0, Lr9/e;->a:Lw9/a;

    iget-object v1, p0, Lr9/e;->c:Ljava/io/File;

    iget-object v2, p0, Lr9/e;->e:Ljava/io/File;

    check-cast v0, Lw9/a$a;

    invoke-virtual {v0, v1, v2}, Lw9/a$a;->c(Ljava/io/File;Ljava/io/File;)V

    .line 27
    :cond_3
    iget-object v0, p0, Lr9/e;->a:Lw9/a;

    iget-object v1, p0, Lr9/e;->d:Ljava/io/File;

    iget-object v2, p0, Lr9/e;->c:Ljava/io/File;

    check-cast v0, Lw9/a$a;

    invoke-virtual {v0, v1, v2}, Lw9/a$a;->c(Ljava/io/File;Ljava/io/File;)V

    .line 28
    iget-object v0, p0, Lr9/e;->a:Lw9/a;

    iget-object v1, p0, Lr9/e;->e:Ljava/io/File;

    check-cast v0, Lw9/a$a;

    invoke-virtual {v0, v1}, Lw9/a$a;->a(Ljava/io/File;)V

    .line 29
    invoke-virtual {p0}, Lr9/e;->s()Laa/g;

    move-result-object v0

    iput-object v0, p0, Lr9/e;->j:Laa/g;

    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lr9/e;->m:Z

    .line 31
    iput-boolean v0, p0, Lr9/e;->q:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 32
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 33
    :try_start_5
    invoke-virtual {v1}, Laa/r;->close()V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public K(Lr9/e$d;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lr9/e$d;->f:Lr9/e$c;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lr9/e$c;->c()V

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    iget v1, p0, Lr9/e;->h:I

    if-ge v0, v1, :cond_1

    .line 4
    iget-object v1, p0, Lr9/e;->a:Lw9/a;

    iget-object v2, p1, Lr9/e$d;->c:[Ljava/io/File;

    aget-object v2, v2, v0

    check-cast v1, Lw9/a$a;

    invoke-virtual {v1, v2}, Lw9/a$a;->a(Ljava/io/File;)V

    .line 5
    iget-wide v1, p0, Lr9/e;->i:J

    iget-object v3, p1, Lr9/e$d;->b:[J

    aget-wide v4, v3, v0

    sub-long/2addr v1, v4

    iput-wide v1, p0, Lr9/e;->i:J

    const-wide/16 v1, 0x0

    .line 6
    aput-wide v1, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7
    :cond_1
    iget v0, p0, Lr9/e;->l:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lr9/e;->l:I

    .line 8
    iget-object v0, p0, Lr9/e;->j:Laa/g;

    const-string v2, "REMOVE"

    invoke-interface {v0, v2}, Laa/g;->R(Ljava/lang/String;)Laa/g;

    move-result-object v0

    const/16 v2, 0x20

    invoke-interface {v0, v2}, Laa/g;->w(I)Laa/g;

    move-result-object v0

    iget-object v2, p1, Lr9/e$d;->a:Ljava/lang/String;

    invoke-interface {v0, v2}, Laa/g;->R(Ljava/lang/String;)Laa/g;

    move-result-object v0

    const/16 v2, 0xa

    invoke-interface {v0, v2}, Laa/g;->w(I)Laa/g;

    .line 9
    iget-object v0, p0, Lr9/e;->k:Ljava/util/LinkedHashMap;

    iget-object p1, p1, Lr9/e$d;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-virtual {p0}, Lr9/e;->r()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 11
    iget-object p1, p0, Lr9/e;->s:Ljava/util/concurrent/Executor;

    iget-object v0, p0, Lr9/e;->t:Ljava/lang/Runnable;

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_2
    return v1
.end method

.method public L()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :goto_0
    iget-wide v0, p0, Lr9/e;->i:J

    iget-wide v2, p0, Lr9/e;->g:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 2
    iget-object v0, p0, Lr9/e;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr9/e$d;

    .line 3
    invoke-virtual {p0, v0}, Lr9/e;->K(Lr9/e$d;)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lr9/e;->p:Z

    return-void
.end method

.method public final P(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lr9/e;->u:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "keys must match regex [a-z0-9_-]{1,120}: \""

    const-string v2, "\""

    invoke-static {v1, p1, v2}, Landroid/support/v4/media/b;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized close()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lr9/e;->n:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lr9/e;->o:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object v0, p0, Lr9/e;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v2, p0, Lr9/e;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    new-array v2, v2, [Lr9/e$d;

    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lr9/e$d;

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 3
    iget-object v4, v4, Lr9/e$d;->f:Lr9/e$c;

    if-eqz v4, :cond_1

    .line 4
    invoke-virtual {v4}, Lr9/e$c;->a()V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5
    :cond_2
    invoke-virtual {p0}, Lr9/e;->L()V

    .line 6
    iget-object v0, p0, Lr9/e;->j:Laa/g;

    invoke-interface {v0}, Laa/x;->close()V

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lr9/e;->j:Laa/g;

    .line 8
    iput-boolean v1, p0, Lr9/e;->o:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    monitor-exit p0

    return-void

    .line 10
    :cond_3
    :goto_1
    :try_start_1
    iput-boolean v1, p0, Lr9/e;->o:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized d()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    :try_start_1
    iget-boolean v0, p0, Lr9/e;->o:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v0, :cond_0

    .line 3
    monitor-exit p0

    return-void

    .line 4
    :cond_0
    :try_start_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cache is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    .line 5
    monitor-exit p0

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lr9/e;->n:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 2
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lr9/e;->d()V

    .line 3
    invoke-virtual {p0}, Lr9/e;->L()V

    .line 4
    iget-object v0, p0, Lr9/e;->j:Laa/g;

    invoke-interface {v0}, Laa/g;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized k(Lr9/e$c;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p1, Lr9/e$c;->a:Lr9/e$d;

    .line 2
    iget-object v1, v0, Lr9/e$d;->f:Lr9/e$c;

    if-ne v1, p1, :cond_a

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    .line 3
    iget-boolean v2, v0, Lr9/e$d;->e:Z

    if-nez v2, :cond_2

    const/4 v2, 0x0

    .line 4
    :goto_0
    iget v3, p0, Lr9/e;->h:I

    if-ge v2, v3, :cond_2

    .line 5
    iget-object v3, p1, Lr9/e$c;->b:[Z

    aget-boolean v3, v3, v2

    if-eqz v3, :cond_1

    .line 6
    iget-object v3, p0, Lr9/e;->a:Lw9/a;

    iget-object v4, v0, Lr9/e$d;->d:[Ljava/io/File;

    aget-object v4, v4, v2

    check-cast v3, Lw9/a$a;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 8
    invoke-virtual {p1}, Lr9/e$c;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    monitor-exit p0

    return-void

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 10
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lr9/e$c;->a()V

    .line 11
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Newly created entry didn\'t create value for index "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_2
    :goto_1
    iget p1, p0, Lr9/e;->h:I

    if-ge v1, p1, :cond_5

    .line 13
    iget-object p1, v0, Lr9/e$d;->d:[Ljava/io/File;

    aget-object p1, p1, v1

    if-eqz p2, :cond_3

    .line 14
    iget-object v2, p0, Lr9/e;->a:Lw9/a;

    check-cast v2, Lw9/a$a;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 16
    iget-object v2, v0, Lr9/e$d;->c:[Ljava/io/File;

    aget-object v2, v2, v1

    .line 17
    iget-object v3, p0, Lr9/e;->a:Lw9/a;

    check-cast v3, Lw9/a$a;

    invoke-virtual {v3, p1, v2}, Lw9/a$a;->c(Ljava/io/File;Ljava/io/File;)V

    .line 18
    iget-object p1, v0, Lr9/e$d;->b:[J

    aget-wide v3, p1, v1

    .line 19
    iget-object p1, p0, Lr9/e;->a:Lw9/a;

    check-cast p1, Lw9/a$a;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v5

    .line 21
    iget-object p1, v0, Lr9/e$d;->b:[J

    aput-wide v5, p1, v1

    .line 22
    iget-wide v7, p0, Lr9/e;->i:J

    sub-long/2addr v7, v3

    add-long/2addr v7, v5

    iput-wide v7, p0, Lr9/e;->i:J

    goto :goto_2

    .line 23
    :cond_3
    iget-object v2, p0, Lr9/e;->a:Lw9/a;

    check-cast v2, Lw9/a$a;

    invoke-virtual {v2, p1}, Lw9/a$a;->a(Ljava/io/File;)V

    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 24
    :cond_5
    iget p1, p0, Lr9/e;->l:I

    const/4 v1, 0x1

    add-int/2addr p1, v1

    iput p1, p0, Lr9/e;->l:I

    const/4 p1, 0x0

    .line 25
    iput-object p1, v0, Lr9/e$d;->f:Lr9/e$c;

    .line 26
    iget-boolean p1, v0, Lr9/e$d;->e:Z

    or-int/2addr p1, p2

    const/16 v2, 0xa

    const/16 v3, 0x20

    if-eqz p1, :cond_6

    .line 27
    iput-boolean v1, v0, Lr9/e$d;->e:Z

    .line 28
    iget-object p1, p0, Lr9/e;->j:Laa/g;

    const-string v1, "CLEAN"

    invoke-interface {p1, v1}, Laa/g;->R(Ljava/lang/String;)Laa/g;

    move-result-object p1

    invoke-interface {p1, v3}, Laa/g;->w(I)Laa/g;

    .line 29
    iget-object p1, p0, Lr9/e;->j:Laa/g;

    iget-object v1, v0, Lr9/e$d;->a:Ljava/lang/String;

    invoke-interface {p1, v1}, Laa/g;->R(Ljava/lang/String;)Laa/g;

    .line 30
    iget-object p1, p0, Lr9/e;->j:Laa/g;

    invoke-virtual {v0, p1}, Lr9/e$d;->c(Laa/g;)V

    .line 31
    iget-object p1, p0, Lr9/e;->j:Laa/g;

    invoke-interface {p1, v2}, Laa/g;->w(I)Laa/g;

    if-eqz p2, :cond_7

    .line 32
    iget-wide p1, p0, Lr9/e;->r:J

    const-wide/16 v1, 0x1

    add-long/2addr v1, p1

    iput-wide v1, p0, Lr9/e;->r:J

    iput-wide p1, v0, Lr9/e$d;->g:J

    goto :goto_3

    .line 33
    :cond_6
    iget-object p1, p0, Lr9/e;->k:Ljava/util/LinkedHashMap;

    iget-object p2, v0, Lr9/e$d;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    iget-object p1, p0, Lr9/e;->j:Laa/g;

    const-string p2, "REMOVE"

    invoke-interface {p1, p2}, Laa/g;->R(Ljava/lang/String;)Laa/g;

    move-result-object p1

    invoke-interface {p1, v3}, Laa/g;->w(I)Laa/g;

    .line 35
    iget-object p1, p0, Lr9/e;->j:Laa/g;

    iget-object p2, v0, Lr9/e$d;->a:Ljava/lang/String;

    invoke-interface {p1, p2}, Laa/g;->R(Ljava/lang/String;)Laa/g;

    .line 36
    iget-object p1, p0, Lr9/e;->j:Laa/g;

    invoke-interface {p1, v2}, Laa/g;->w(I)Laa/g;

    .line 37
    :cond_7
    :goto_3
    iget-object p1, p0, Lr9/e;->j:Laa/g;

    invoke-interface {p1}, Laa/g;->flush()V

    .line 38
    iget-wide p1, p0, Lr9/e;->i:J

    iget-wide v0, p0, Lr9/e;->g:J

    cmp-long v2, p1, v0

    if-gtz v2, :cond_8

    invoke-virtual {p0}, Lr9/e;->r()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 39
    :cond_8
    iget-object p1, p0, Lr9/e;->s:Ljava/util/concurrent/Executor;

    iget-object p2, p0, Lr9/e;->t:Ljava/lang/Runnable;

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    :cond_9
    monitor-exit p0

    return-void

    .line 41
    :cond_a
    :try_start_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized l(Ljava/lang/String;J)Lr9/e$c;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lr9/e;->p()V

    .line 2
    invoke-virtual {p0}, Lr9/e;->d()V

    .line 3
    invoke-virtual {p0, p1}, Lr9/e;->P(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lr9/e;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr9/e$d;

    const-wide/16 v1, -0x1

    const/4 v3, 0x0

    cmp-long v4, p2, v1

    if-eqz v4, :cond_1

    if-eqz v0, :cond_0

    .line 5
    iget-wide v1, v0, Lr9/e$d;->g:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v4, v1, p2

    if-eqz v4, :cond_1

    .line 6
    :cond_0
    monitor-exit p0

    return-object v3

    :cond_1
    if-eqz v0, :cond_2

    .line 7
    :try_start_1
    iget-object p2, v0, Lr9/e$d;->f:Lr9/e$c;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p2, :cond_2

    .line 8
    monitor-exit p0

    return-object v3

    .line 9
    :cond_2
    :try_start_2
    iget-boolean p2, p0, Lr9/e;->p:Z

    if-nez p2, :cond_6

    iget-boolean p2, p0, Lr9/e;->q:Z

    if-eqz p2, :cond_3

    goto :goto_0

    .line 10
    :cond_3
    iget-object p2, p0, Lr9/e;->j:Laa/g;

    const-string p3, "DIRTY"

    invoke-interface {p2, p3}, Laa/g;->R(Ljava/lang/String;)Laa/g;

    move-result-object p2

    const/16 p3, 0x20

    invoke-interface {p2, p3}, Laa/g;->w(I)Laa/g;

    move-result-object p2

    invoke-interface {p2, p1}, Laa/g;->R(Ljava/lang/String;)Laa/g;

    move-result-object p2

    const/16 p3, 0xa

    invoke-interface {p2, p3}, Laa/g;->w(I)Laa/g;

    .line 11
    iget-object p2, p0, Lr9/e;->j:Laa/g;

    invoke-interface {p2}, Laa/g;->flush()V

    .line 12
    iget-boolean p2, p0, Lr9/e;->m:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p2, :cond_4

    .line 13
    monitor-exit p0

    return-object v3

    :cond_4
    if-nez v0, :cond_5

    .line 14
    :try_start_3
    new-instance v0, Lr9/e$d;

    invoke-direct {v0, p0, p1}, Lr9/e$d;-><init>(Lr9/e;Ljava/lang/String;)V

    .line 15
    iget-object p2, p0, Lr9/e;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    :cond_5
    new-instance p1, Lr9/e$c;

    invoke-direct {p1, p0, v0}, Lr9/e$c;-><init>(Lr9/e;Lr9/e$d;)V

    .line 17
    iput-object p1, v0, Lr9/e$d;->f:Lr9/e$c;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 18
    monitor-exit p0

    return-object p1

    .line 19
    :cond_6
    :goto_0
    :try_start_4
    iget-object p1, p0, Lr9/e;->s:Ljava/util/concurrent/Executor;

    iget-object p2, p0, Lr9/e;->t:Ljava/lang/Runnable;

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 20
    monitor-exit p0

    return-object v3

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized o(Ljava/lang/String;)Lr9/e$e;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lr9/e;->p()V

    .line 2
    invoke-virtual {p0}, Lr9/e;->d()V

    .line 3
    invoke-virtual {p0, p1}, Lr9/e;->P(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lr9/e;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr9/e$d;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 5
    iget-boolean v2, v0, Lr9/e$d;->e:Z

    if-nez v2, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0}, Lr9/e$d;->b()Lr9/e$e;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 7
    monitor-exit p0

    return-object v1

    .line 8
    :cond_1
    :try_start_1
    iget v1, p0, Lr9/e;->l:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lr9/e;->l:I

    .line 9
    iget-object v1, p0, Lr9/e;->j:Laa/g;

    const-string v2, "READ"

    invoke-interface {v1, v2}, Laa/g;->R(Ljava/lang/String;)Laa/g;

    move-result-object v1

    const/16 v2, 0x20

    invoke-interface {v1, v2}, Laa/g;->w(I)Laa/g;

    move-result-object v1

    invoke-interface {v1, p1}, Laa/g;->R(Ljava/lang/String;)Laa/g;

    move-result-object p1

    const/16 v1, 0xa

    invoke-interface {p1, v1}, Laa/g;->w(I)Laa/g;

    .line 10
    invoke-virtual {p0}, Lr9/e;->r()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 11
    iget-object p1, p0, Lr9/e;->s:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lr9/e;->t:Ljava/lang/Runnable;

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    :cond_2
    monitor-exit p0

    return-object v0

    .line 13
    :cond_3
    :goto_0
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized p()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lr9/e;->n:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    .line 2
    monitor-exit p0

    return-void

    .line 3
    :cond_0
    :try_start_1
    iget-object v0, p0, Lr9/e;->a:Lw9/a;

    iget-object v1, p0, Lr9/e;->e:Ljava/io/File;

    check-cast v0, Lw9/a$a;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    iget-object v0, p0, Lr9/e;->a:Lw9/a;

    iget-object v1, p0, Lr9/e;->c:Ljava/io/File;

    check-cast v0, Lw9/a$a;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lr9/e;->a:Lw9/a;

    iget-object v1, p0, Lr9/e;->e:Ljava/io/File;

    check-cast v0, Lw9/a$a;

    invoke-virtual {v0, v1}, Lw9/a$a;->a(Ljava/io/File;)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, p0, Lr9/e;->a:Lw9/a;

    iget-object v1, p0, Lr9/e;->e:Ljava/io/File;

    iget-object v2, p0, Lr9/e;->c:Ljava/io/File;

    check-cast v0, Lw9/a$a;

    invoke-virtual {v0, v1, v2}, Lw9/a$a;->c(Ljava/io/File;Ljava/io/File;)V

    .line 9
    :cond_2
    :goto_0
    iget-object v0, p0, Lr9/e;->a:Lw9/a;

    iget-object v1, p0, Lr9/e;->c:Ljava/io/File;

    check-cast v0, Lw9/a$a;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 11
    :try_start_2
    invoke-virtual {p0}, Lr9/e;->B()V

    .line 12
    invoke-virtual {p0}, Lr9/e;->A()V

    .line 13
    iput-boolean v1, p0, Lr9/e;->n:Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 14
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    .line 15
    :try_start_3
    sget-object v2, Lx9/f;->a:Lx9/f;

    const/4 v3, 0x5

    .line 16
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DiskLruCache "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lr9/e;->b:Ljava/io/File;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " is corrupt: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", removing"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 18
    invoke-virtual {v2, v3, v4, v0}, Lx9/f;->l(ILjava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 v0, 0x0

    .line 19
    :try_start_4
    invoke-virtual {p0}, Lr9/e;->close()V

    .line 20
    iget-object v2, p0, Lr9/e;->a:Lw9/a;

    iget-object v3, p0, Lr9/e;->b:Ljava/io/File;

    check-cast v2, Lw9/a$a;

    invoke-virtual {v2, v3}, Lw9/a$a;->b(Ljava/io/File;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 21
    :try_start_5
    iput-boolean v0, p0, Lr9/e;->o:Z

    goto :goto_1

    :catchall_0
    move-exception v1

    iput-boolean v0, p0, Lr9/e;->o:Z

    throw v1

    .line 22
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lr9/e;->J()V

    .line 23
    iput-boolean v1, p0, Lr9/e;->n:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 24
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public r()Z
    .locals 2

    .line 1
    iget v0, p0, Lr9/e;->l:I

    const/16 v1, 0x7d0

    if-lt v0, v1, :cond_0

    iget-object v1, p0, Lr9/e;->k:Ljava/util/LinkedHashMap;

    .line 2
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final s()Laa/g;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lr9/e;->a:Lw9/a;

    iget-object v1, p0, Lr9/e;->c:Ljava/io/File;

    check-cast v0, Lw9/a$a;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    :try_start_0
    invoke-static {v1}, Laa/o;->a(Ljava/io/File;)Laa/x;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3
    :catch_0
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 4
    invoke-static {v1}, Laa/o;->a(Ljava/io/File;)Laa/x;

    move-result-object v0

    .line 5
    :goto_0
    new-instance v1, Lr9/e$b;

    invoke-direct {v1, p0, v0}, Lr9/e$b;-><init>(Lr9/e;Laa/x;)V

    .line 6
    sget-object v0, Laa/o;->a:Ljava/util/logging/Logger;

    .line 7
    new-instance v0, Laa/r;

    invoke-direct {v0, v1}, Laa/r;-><init>(Laa/x;)V

    return-object v0
.end method
