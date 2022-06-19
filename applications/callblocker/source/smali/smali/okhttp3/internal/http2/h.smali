.class public final Lokhttp3/internal/http2/h;
.super Ljava/lang/Object;
.source "Http2Stream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/http2/h$c;,
        Lokhttp3/internal/http2/h$a;,
        Lokhttp3/internal/http2/h$b;
    }
.end annotation


# static fields
.field static final synthetic i:Z


# instance fields
.field a:J

.field b:J

.field final c:I

.field final d:Lokhttp3/internal/http2/f;

.field final e:Lokhttp3/internal/http2/h$a;

.field final f:Lokhttp3/internal/http2/h$c;

.field final g:Lokhttp3/internal/http2/h$c;

.field h:Lokhttp3/internal/http2/a;

.field private final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/http2/b;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/http2/b;",
            ">;"
        }
    .end annotation
.end field

.field private l:Z

.field private final m:Lokhttp3/internal/http2/h$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lokhttp3/internal/http2/h;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lokhttp3/internal/http2/h;->i:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(ILokhttp3/internal/http2/f;ZZLjava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lokhttp3/internal/http2/f;",
            "ZZ",
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/http2/b;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lokhttp3/internal/http2/h;->a:J

    .line 65
    new-instance v0, Lokhttp3/internal/http2/h$c;

    invoke-direct {v0, p0}, Lokhttp3/internal/http2/h$c;-><init>(Lokhttp3/internal/http2/h;)V

    iput-object v0, p0, Lokhttp3/internal/http2/h;->f:Lokhttp3/internal/http2/h$c;

    .line 66
    new-instance v0, Lokhttp3/internal/http2/h$c;

    invoke-direct {v0, p0}, Lokhttp3/internal/http2/h$c;-><init>(Lokhttp3/internal/http2/h;)V

    iput-object v0, p0, Lokhttp3/internal/http2/h;->g:Lokhttp3/internal/http2/h$c;

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lokhttp3/internal/http2/h;->h:Lokhttp3/internal/http2/a;

    .line 77
    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "connection == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_0
    if-nez p5, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "requestHeaders == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_1
    iput p1, p0, Lokhttp3/internal/http2/h;->c:I

    .line 80
    iput-object p2, p0, Lokhttp3/internal/http2/h;->d:Lokhttp3/internal/http2/f;

    .line 81
    iget-object v0, p2, Lokhttp3/internal/http2/f;->l:Lokhttp3/internal/http2/l;

    .line 82
    invoke-virtual {v0}, Lokhttp3/internal/http2/l;->d()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lokhttp3/internal/http2/h;->b:J

    .line 83
    new-instance v0, Lokhttp3/internal/http2/h$b;

    iget-object v1, p2, Lokhttp3/internal/http2/f;->k:Lokhttp3/internal/http2/l;

    invoke-virtual {v1}, Lokhttp3/internal/http2/l;->d()I

    move-result v1

    int-to-long v2, v1

    invoke-direct {v0, p0, v2, v3}, Lokhttp3/internal/http2/h$b;-><init>(Lokhttp3/internal/http2/h;J)V

    iput-object v0, p0, Lokhttp3/internal/http2/h;->m:Lokhttp3/internal/http2/h$b;

    .line 84
    new-instance v0, Lokhttp3/internal/http2/h$a;

    invoke-direct {v0, p0}, Lokhttp3/internal/http2/h$a;-><init>(Lokhttp3/internal/http2/h;)V

    iput-object v0, p0, Lokhttp3/internal/http2/h;->e:Lokhttp3/internal/http2/h$a;

    .line 85
    iget-object v0, p0, Lokhttp3/internal/http2/h;->m:Lokhttp3/internal/http2/h$b;

    iput-boolean p4, v0, Lokhttp3/internal/http2/h$b;->b:Z

    .line 86
    iget-object v0, p0, Lokhttp3/internal/http2/h;->e:Lokhttp3/internal/http2/h$a;

    iput-boolean p3, v0, Lokhttp3/internal/http2/h$a;->b:Z

    .line 87
    iput-object p5, p0, Lokhttp3/internal/http2/h;->j:Ljava/util/List;

    .line 88
    return-void
.end method

.method private d(Lokhttp3/internal/http2/a;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 242
    sget-boolean v1, Lokhttp3/internal/http2/h;->i:Z

    if-nez v1, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 243
    :cond_0
    monitor-enter p0

    .line 244
    :try_start_0
    iget-object v1, p0, Lokhttp3/internal/http2/h;->h:Lokhttp3/internal/http2/a;

    if-eqz v1, :cond_1

    .line 245
    monitor-exit p0

    .line 254
    :goto_0
    return v0

    .line 247
    :cond_1
    iget-object v1, p0, Lokhttp3/internal/http2/h;->m:Lokhttp3/internal/http2/h$b;

    iget-boolean v1, v1, Lokhttp3/internal/http2/h$b;->b:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lokhttp3/internal/http2/h;->e:Lokhttp3/internal/http2/h$a;

    iget-boolean v1, v1, Lokhttp3/internal/http2/h$a;->b:Z

    if-eqz v1, :cond_2

    .line 248
    monitor-exit p0

    goto :goto_0

    .line 252
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 250
    :cond_2
    :try_start_1
    iput-object p1, p0, Lokhttp3/internal/http2/h;->h:Lokhttp3/internal/http2/a;

    .line 251
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 252
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 253
    iget-object v0, p0, Lokhttp3/internal/http2/h;->d:Lokhttp3/internal/http2/f;

    iget v1, p0, Lokhttp3/internal/http2/h;->c:I

    invoke-virtual {v0, v1}, Lokhttp3/internal/http2/f;->b(I)Lokhttp3/internal/http2/h;

    .line 254
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lokhttp3/internal/http2/h;->c:I

    return v0
.end method

.method a(J)V
    .locals 3

    .prologue
    .line 557
    iget-wide v0, p0, Lokhttp3/internal/http2/h;->b:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lokhttp3/internal/http2/h;->b:J

    .line 558
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 559
    :cond_0
    return-void
.end method

.method a(La/e;I)V
    .locals 4

    .prologue
    .line 280
    sget-boolean v0, Lokhttp3/internal/http2/h;->i:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 281
    :cond_0
    iget-object v0, p0, Lokhttp3/internal/http2/h;->m:Lokhttp3/internal/http2/h$b;

    int-to-long v2, p2

    invoke-virtual {v0, p1, v2, v3}, Lokhttp3/internal/http2/h$b;->a(La/e;J)V

    .line 282
    return-void
.end method

.method a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/http2/b;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 258
    sget-boolean v1, Lokhttp3/internal/http2/h;->i:Z

    if-nez v1, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 260
    :cond_0
    monitor-enter p0

    .line 261
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lokhttp3/internal/http2/h;->l:Z

    .line 262
    iget-object v1, p0, Lokhttp3/internal/http2/h;->k:Ljava/util/List;

    if-nez v1, :cond_2

    .line 263
    iput-object p1, p0, Lokhttp3/internal/http2/h;->k:Ljava/util/List;

    .line 264
    invoke-virtual {p0}, Lokhttp3/internal/http2/h;->b()Z

    move-result v0

    .line 265
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 273
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 274
    if-nez v0, :cond_1

    .line 275
    iget-object v0, p0, Lokhttp3/internal/http2/h;->d:Lokhttp3/internal/http2/f;

    iget v1, p0, Lokhttp3/internal/http2/h;->c:I

    invoke-virtual {v0, v1}, Lokhttp3/internal/http2/f;->b(I)Lokhttp3/internal/http2/h;

    .line 277
    :cond_1
    return-void

    .line 267
    :cond_2
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 268
    iget-object v2, p0, Lokhttp3/internal/http2/h;->k:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 269
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 271
    iput-object v1, p0, Lokhttp3/internal/http2/h;->k:Ljava/util/List;

    goto :goto_0

    .line 273
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public a(Lokhttp3/internal/http2/a;)V
    .locals 2

    .prologue
    .line 223
    invoke-direct {p0, p1}, Lokhttp3/internal/http2/h;->d(Lokhttp3/internal/http2/a;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 227
    :goto_0
    return-void

    .line 226
    :cond_0
    iget-object v0, p0, Lokhttp3/internal/http2/h;->d:Lokhttp3/internal/http2/f;

    iget v1, p0, Lokhttp3/internal/http2/h;->c:I

    invoke-virtual {v0, v1, p1}, Lokhttp3/internal/http2/f;->b(ILokhttp3/internal/http2/a;)V

    goto :goto_0
.end method

.method public b(Lokhttp3/internal/http2/a;)V
    .locals 2

    .prologue
    .line 234
    invoke-direct {p0, p1}, Lokhttp3/internal/http2/h;->d(Lokhttp3/internal/http2/a;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 238
    :goto_0
    return-void

    .line 237
    :cond_0
    iget-object v0, p0, Lokhttp3/internal/http2/h;->d:Lokhttp3/internal/http2/f;

    iget v1, p0, Lokhttp3/internal/http2/h;->c:I

    invoke-virtual {v0, v1, p1}, Lokhttp3/internal/http2/f;->a(ILokhttp3/internal/http2/a;)V

    goto :goto_0
.end method

.method public declared-synchronized b()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 106
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lokhttp3/internal/http2/h;->h:Lokhttp3/internal/http2/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 114
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 109
    :cond_1
    :try_start_1
    iget-object v1, p0, Lokhttp3/internal/http2/h;->m:Lokhttp3/internal/http2/h$b;

    iget-boolean v1, v1, Lokhttp3/internal/http2/h$b;->b:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lokhttp3/internal/http2/h;->m:Lokhttp3/internal/http2/h$b;

    iget-boolean v1, v1, Lokhttp3/internal/http2/h$b;->a:Z

    if-eqz v1, :cond_4

    :cond_2
    iget-object v1, p0, Lokhttp3/internal/http2/h;->e:Lokhttp3/internal/http2/h$a;

    iget-boolean v1, v1, Lokhttp3/internal/http2/h$a;->b:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lokhttp3/internal/http2/h;->e:Lokhttp3/internal/http2/h$a;

    iget-boolean v1, v1, Lokhttp3/internal/http2/h$a;->a:Z

    if-eqz v1, :cond_4

    :cond_3
    iget-boolean v1, p0, Lokhttp3/internal/http2/h;->l:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_0

    .line 114
    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    .line 106
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized c(Lokhttp3/internal/http2/a;)V
    .locals 1

    .prologue
    .line 298
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/http2/h;->h:Lokhttp3/internal/http2/a;

    if-nez v0, :cond_0

    .line 299
    iput-object p1, p0, Lokhttp3/internal/http2/h;->h:Lokhttp3/internal/http2/a;

    .line 300
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 302
    :cond_0
    monitor-exit p0

    return-void

    .line 298
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 119
    iget v0, p0, Lokhttp3/internal/http2/h;->c:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    .line 120
    :goto_0
    iget-object v3, p0, Lokhttp3/internal/http2/h;->d:Lokhttp3/internal/http2/f;

    iget-boolean v3, v3, Lokhttp3/internal/http2/f;->a:Z

    if-ne v3, v0, :cond_1

    :goto_1
    return v1

    :cond_0
    move v0, v2

    .line 119
    goto :goto_0

    :cond_1
    move v1, v2

    .line 120
    goto :goto_1
.end method

.method public declared-synchronized d()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/http2/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 137
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lokhttp3/internal/http2/h;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 138
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "servers cannot read response headers"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 140
    :cond_0
    :try_start_1
    iget-object v0, p0, Lokhttp3/internal/http2/h;->f:Lokhttp3/internal/http2/h$c;

    invoke-virtual {v0}, Lokhttp3/internal/http2/h$c;->c()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 142
    :goto_0
    :try_start_2
    iget-object v0, p0, Lokhttp3/internal/http2/h;->k:Ljava/util/List;

    if-nez v0, :cond_1

    iget-object v0, p0, Lokhttp3/internal/http2/h;->h:Lokhttp3/internal/http2/a;

    if-nez v0, :cond_1

    .line 143
    invoke-virtual {p0}, Lokhttp3/internal/http2/h;->l()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 146
    :catchall_1
    move-exception v0

    :try_start_3
    iget-object v1, p0, Lokhttp3/internal/http2/h;->f:Lokhttp3/internal/http2/h$c;

    invoke-virtual {v1}, Lokhttp3/internal/http2/h$c;->b()V

    throw v0

    :cond_1
    iget-object v0, p0, Lokhttp3/internal/http2/h;->f:Lokhttp3/internal/http2/h$c;

    invoke-virtual {v0}, Lokhttp3/internal/http2/h$c;->b()V

    .line 148
    iget-object v0, p0, Lokhttp3/internal/http2/h;->k:Ljava/util/List;

    .line 149
    if-eqz v0, :cond_2

    .line 150
    const/4 v1, 0x0

    iput-object v1, p0, Lokhttp3/internal/http2/h;->k:Ljava/util/List;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 151
    monitor-exit p0

    return-object v0

    .line 153
    :cond_2
    :try_start_4
    new-instance v0, Lokhttp3/internal/http2/StreamResetException;

    iget-object v1, p0, Lokhttp3/internal/http2/h;->h:Lokhttp3/internal/http2/a;

    invoke-direct {v0, v1}, Lokhttp3/internal/http2/StreamResetException;-><init>(Lokhttp3/internal/http2/a;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public e()La/t;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lokhttp3/internal/http2/h;->f:Lokhttp3/internal/http2/h$c;

    return-object v0
.end method

.method public f()La/t;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lokhttp3/internal/http2/h;->g:Lokhttp3/internal/http2/h$c;

    return-object v0
.end method

.method public g()La/s;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lokhttp3/internal/http2/h;->m:Lokhttp3/internal/http2/h$b;

    return-object v0
.end method

.method public h()La/r;
    .locals 2

    .prologue
    .line 210
    monitor-enter p0

    .line 211
    :try_start_0
    iget-boolean v0, p0, Lokhttp3/internal/http2/h;->l:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lokhttp3/internal/http2/h;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 212
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "reply before requesting the sink"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 214
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 215
    iget-object v0, p0, Lokhttp3/internal/http2/h;->e:Lokhttp3/internal/http2/h$a;

    return-object v0
.end method

.method i()V
    .locals 2

    .prologue
    .line 285
    sget-boolean v0, Lokhttp3/internal/http2/h;->i:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 287
    :cond_0
    monitor-enter p0

    .line 288
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/http2/h;->m:Lokhttp3/internal/http2/h$b;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lokhttp3/internal/http2/h$b;->b:Z

    .line 289
    invoke-virtual {p0}, Lokhttp3/internal/http2/h;->b()Z

    move-result v0

    .line 290
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 291
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 292
    if-nez v0, :cond_1

    .line 293
    iget-object v0, p0, Lokhttp3/internal/http2/h;->d:Lokhttp3/internal/http2/f;

    iget v1, p0, Lokhttp3/internal/http2/h;->c:I

    invoke-virtual {v0, v1}, Lokhttp3/internal/http2/f;->b(I)Lokhttp3/internal/http2/h;

    .line 295
    :cond_1
    return-void

    .line 291
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method j()V
    .locals 2

    .prologue
    .line 442
    sget-boolean v0, Lokhttp3/internal/http2/h;->i:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 445
    :cond_0
    monitor-enter p0

    .line 446
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/http2/h;->m:Lokhttp3/internal/http2/h$b;

    iget-boolean v0, v0, Lokhttp3/internal/http2/h$b;->b:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lokhttp3/internal/http2/h;->m:Lokhttp3/internal/http2/h$b;

    iget-boolean v0, v0, Lokhttp3/internal/http2/h$b;->a:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lokhttp3/internal/http2/h;->e:Lokhttp3/internal/http2/h$a;

    iget-boolean v0, v0, Lokhttp3/internal/http2/h$a;->b:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lokhttp3/internal/http2/h;->e:Lokhttp3/internal/http2/h$a;

    iget-boolean v0, v0, Lokhttp3/internal/http2/h$a;->a:Z

    if-eqz v0, :cond_3

    :cond_1
    const/4 v0, 0x1

    .line 447
    :goto_0
    invoke-virtual {p0}, Lokhttp3/internal/http2/h;->b()Z

    move-result v1

    .line 448
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 449
    if-eqz v0, :cond_4

    .line 454
    sget-object v0, Lokhttp3/internal/http2/a;->f:Lokhttp3/internal/http2/a;

    invoke-virtual {p0, v0}, Lokhttp3/internal/http2/h;->a(Lokhttp3/internal/http2/a;)V

    .line 458
    :cond_2
    :goto_1
    return-void

    .line 446
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 448
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 455
    :cond_4
    if-nez v1, :cond_2

    .line 456
    iget-object v0, p0, Lokhttp3/internal/http2/h;->d:Lokhttp3/internal/http2/f;

    iget v1, p0, Lokhttp3/internal/http2/h;->c:I

    invoke-virtual {v0, v1}, Lokhttp3/internal/http2/f;->b(I)Lokhttp3/internal/http2/h;

    goto :goto_1
.end method

.method k()V
    .locals 2

    .prologue
    .line 562
    iget-object v0, p0, Lokhttp3/internal/http2/h;->e:Lokhttp3/internal/http2/h$a;

    iget-boolean v0, v0, Lokhttp3/internal/http2/h$a;->a:Z

    if-eqz v0, :cond_0

    .line 563
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 564
    :cond_0
    iget-object v0, p0, Lokhttp3/internal/http2/h;->e:Lokhttp3/internal/http2/h$a;

    iget-boolean v0, v0, Lokhttp3/internal/http2/h$a;->b:Z

    if-eqz v0, :cond_1

    .line 565
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "stream finished"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 566
    :cond_1
    iget-object v0, p0, Lokhttp3/internal/http2/h;->h:Lokhttp3/internal/http2/a;

    if-eqz v0, :cond_2

    .line 567
    new-instance v0, Lokhttp3/internal/http2/StreamResetException;

    iget-object v1, p0, Lokhttp3/internal/http2/h;->h:Lokhttp3/internal/http2/a;

    invoke-direct {v0, v1}, Lokhttp3/internal/http2/StreamResetException;-><init>(Lokhttp3/internal/http2/a;)V

    throw v0

    .line 569
    :cond_2
    return-void
.end method

.method l()V
    .locals 1

    .prologue
    .line 577
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 581
    return-void

    .line 578
    :catch_0
    move-exception v0

    .line 579
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0
.end method
