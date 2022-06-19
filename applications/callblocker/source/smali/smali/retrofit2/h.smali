.class final Lretrofit2/h;
.super Ljava/lang/Object;
.source "OkHttpCall.java"

# interfaces
.implements Lretrofit2/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lretrofit2/h$a;,
        Lretrofit2/h$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lretrofit2/b",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lretrofit2/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/n",
            "<TT;*>;"
        }
    .end annotation
.end field

.field private final b:[Ljava/lang/Object;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private volatile c:Z

.field private d:Lokhttp3/e;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private e:Ljava/lang/Throwable;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private f:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method constructor <init>(Lretrofit2/n;[Ljava/lang/Object;)V
    .locals 0
    .param p2    # [Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/n",
            "<TT;*>;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lretrofit2/h;->a:Lretrofit2/n;

    .line 47
    iput-object p2, p0, Lretrofit2/h;->b:[Ljava/lang/Object;

    .line 48
    return-void
.end method

.method private f()Lokhttp3/e;
    .locals 2

    .prologue
    .line 184
    iget-object v0, p0, Lretrofit2/h;->a:Lretrofit2/n;

    iget-object v1, p0, Lretrofit2/h;->b:[Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lretrofit2/n;->a([Ljava/lang/Object;)Lokhttp3/e;

    move-result-object v0

    .line 185
    if-nez v0, :cond_0

    .line 186
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Call.Factory returned null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 188
    :cond_0
    return-object v0
.end method


# virtual methods
.method public a()Lretrofit2/l;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lretrofit2/l",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 150
    monitor-enter p0

    .line 151
    :try_start_0
    iget-boolean v0, p0, Lretrofit2/h;->f:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Already executed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 174
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 152
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lretrofit2/h;->f:Z

    .line 154
    iget-object v0, p0, Lretrofit2/h;->e:Ljava/lang/Throwable;

    if-eqz v0, :cond_3

    .line 155
    iget-object v0, p0, Lretrofit2/h;->e:Ljava/lang/Throwable;

    instance-of v0, v0, Ljava/io/IOException;

    if-eqz v0, :cond_1

    .line 156
    iget-object v0, p0, Lretrofit2/h;->e:Ljava/lang/Throwable;

    check-cast v0, Ljava/io/IOException;

    throw v0

    .line 157
    :cond_1
    iget-object v0, p0, Lretrofit2/h;->e:Ljava/lang/Throwable;

    instance-of v0, v0, Ljava/lang/RuntimeException;

    if-eqz v0, :cond_2

    .line 158
    iget-object v0, p0, Lretrofit2/h;->e:Ljava/lang/Throwable;

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    .line 160
    :cond_2
    iget-object v0, p0, Lretrofit2/h;->e:Ljava/lang/Throwable;

    check-cast v0, Ljava/lang/Error;

    throw v0

    .line 164
    :cond_3
    iget-object v0, p0, Lretrofit2/h;->d:Lokhttp3/e;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 165
    if-nez v0, :cond_4

    .line 167
    :try_start_2
    invoke-direct {p0}, Lretrofit2/h;->f()Lokhttp3/e;

    move-result-object v0

    iput-object v0, p0, Lretrofit2/h;->d:Lokhttp3/e;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 174
    :cond_4
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 176
    iget-boolean v1, p0, Lretrofit2/h;->c:Z

    if-eqz v1, :cond_5

    .line 177
    invoke-interface {v0}, Lokhttp3/e;->b()V

    .line 180
    :cond_5
    invoke-interface {v0}, Lokhttp3/e;->a()Lokhttp3/ac;

    move-result-object v0

    invoke-virtual {p0, v0}, Lretrofit2/h;->a(Lokhttp3/ac;)Lretrofit2/l;

    move-result-object v0

    return-object v0

    .line 168
    :catch_0
    move-exception v0

    .line 169
    :goto_0
    :try_start_4
    invoke-static {v0}, Lretrofit2/o;->a(Ljava/lang/Throwable;)V

    .line 170
    iput-object v0, p0, Lretrofit2/h;->e:Ljava/lang/Throwable;

    .line 171
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 168
    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method a(Lokhttp3/ac;)Lretrofit2/l;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/ac;",
            ")",
            "Lretrofit2/l",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 192
    invoke-virtual {p1}, Lokhttp3/ac;->f()Lokhttp3/ad;

    move-result-object v1

    .line 195
    invoke-virtual {p1}, Lokhttp3/ac;->g()Lokhttp3/ac$a;

    move-result-object v0

    new-instance v2, Lretrofit2/h$b;

    .line 196
    invoke-virtual {v1}, Lokhttp3/ad;->a()Lokhttp3/v;

    move-result-object v3

    invoke-virtual {v1}, Lokhttp3/ad;->b()J

    move-result-wide v4

    invoke-direct {v2, v3, v4, v5}, Lretrofit2/h$b;-><init>(Lokhttp3/v;J)V

    invoke-virtual {v0, v2}, Lokhttp3/ac$a;->a(Lokhttp3/ad;)Lokhttp3/ac$a;

    move-result-object v0

    .line 197
    invoke-virtual {v0}, Lokhttp3/ac$a;->a()Lokhttp3/ac;

    move-result-object v0

    .line 199
    invoke-virtual {v0}, Lokhttp3/ac;->b()I

    move-result v2

    .line 200
    const/16 v3, 0xc8

    if-lt v2, v3, :cond_0

    const/16 v3, 0x12c

    if-lt v2, v3, :cond_1

    .line 203
    :cond_0
    :try_start_0
    invoke-static {v1}, Lretrofit2/o;->a(Lokhttp3/ad;)Lokhttp3/ad;

    move-result-object v2

    .line 204
    invoke-static {v2, v0}, Lretrofit2/l;->a(Lokhttp3/ad;Lokhttp3/ac;)Lretrofit2/l;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 206
    invoke-virtual {v1}, Lokhttp3/ad;->close()V

    .line 218
    :goto_0
    return-object v0

    .line 206
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lokhttp3/ad;->close()V

    throw v0

    .line 210
    :cond_1
    const/16 v3, 0xcc

    if-eq v2, v3, :cond_2

    const/16 v3, 0xcd

    if-ne v2, v3, :cond_3

    .line 211
    :cond_2
    invoke-virtual {v1}, Lokhttp3/ad;->close()V

    .line 212
    const/4 v1, 0x0

    invoke-static {v1, v0}, Lretrofit2/l;->a(Ljava/lang/Object;Lokhttp3/ac;)Lretrofit2/l;

    move-result-object v0

    goto :goto_0

    .line 215
    :cond_3
    new-instance v2, Lretrofit2/h$a;

    invoke-direct {v2, v1}, Lretrofit2/h$a;-><init>(Lokhttp3/ad;)V

    .line 217
    :try_start_1
    iget-object v1, p0, Lretrofit2/h;->a:Lretrofit2/n;

    invoke-virtual {v1, v2}, Lretrofit2/n;->a(Lokhttp3/ad;)Ljava/lang/Object;

    move-result-object v1

    .line 218
    invoke-static {v1, v0}, Lretrofit2/l;->a(Ljava/lang/Object;Lokhttp3/ac;)Lretrofit2/l;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0

    .line 219
    :catch_0
    move-exception v0

    .line 222
    invoke-virtual {v2}, Lretrofit2/h$a;->e()V

    .line 223
    throw v0
.end method

.method public a(Lretrofit2/d;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/d",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 82
    const-string/jumbo v0, "callback == null"

    invoke-static {p1, v0}, Lretrofit2/o;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 87
    monitor-enter p0

    .line 88
    :try_start_0
    iget-boolean v0, p0, Lretrofit2/h;->f:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Already executed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 89
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lretrofit2/h;->f:Z

    .line 91
    iget-object v2, p0, Lretrofit2/h;->d:Lokhttp3/e;

    .line 92
    iget-object v0, p0, Lretrofit2/h;->e:Ljava/lang/Throwable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    if-nez v2, :cond_3

    if-nez v0, :cond_3

    .line 95
    :try_start_2
    invoke-direct {p0}, Lretrofit2/h;->f()Lokhttp3/e;

    move-result-object v1

    iput-object v1, p0, Lretrofit2/h;->d:Lokhttp3/e;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 101
    :goto_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 103
    if-eqz v0, :cond_1

    .line 104
    invoke-interface {p1, p0, v0}, Lretrofit2/d;->a(Lretrofit2/b;Ljava/lang/Throwable;)V

    .line 141
    :goto_1
    return-void

    .line 96
    :catch_0
    move-exception v0

    .line 97
    :try_start_4
    invoke-static {v0}, Lretrofit2/o;->a(Ljava/lang/Throwable;)V

    .line 98
    iput-object v0, p0, Lretrofit2/h;->e:Ljava/lang/Throwable;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v1, v2

    goto :goto_0

    .line 108
    :cond_1
    iget-boolean v0, p0, Lretrofit2/h;->c:Z

    if-eqz v0, :cond_2

    .line 109
    invoke-interface {v1}, Lokhttp3/e;->b()V

    .line 112
    :cond_2
    new-instance v0, Lretrofit2/h$1;

    invoke-direct {v0, p0, p1}, Lretrofit2/h$1;-><init>(Lretrofit2/h;Lretrofit2/d;)V

    invoke-interface {v1, v0}, Lokhttp3/e;->a(Lokhttp3/f;)V

    goto :goto_1

    :cond_3
    move-object v1, v2

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 228
    const/4 v0, 0x1

    iput-boolean v0, p0, Lretrofit2/h;->c:Z

    .line 231
    monitor-enter p0

    .line 232
    :try_start_0
    iget-object v0, p0, Lretrofit2/h;->d:Lokhttp3/e;

    .line 233
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    if-eqz v0, :cond_0

    .line 235
    invoke-interface {v0}, Lokhttp3/e;->b()V

    .line 237
    :cond_0
    return-void

    .line 233
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public c()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 240
    iget-boolean v1, p0, Lretrofit2/h;->c:Z

    if-eqz v1, :cond_0

    .line 244
    :goto_0
    return v0

    .line 243
    :cond_0
    monitor-enter p0

    .line 244
    :try_start_0
    iget-object v1, p0, Lretrofit2/h;->d:Lokhttp3/e;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lretrofit2/h;->d:Lokhttp3/e;

    invoke-interface {v1}, Lokhttp3/e;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_1
    monitor-exit p0

    goto :goto_0

    .line 245
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 244
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0}, Lretrofit2/h;->e()Lretrofit2/h;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d()Lretrofit2/b;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0}, Lretrofit2/h;->e()Lretrofit2/h;

    move-result-object v0

    return-object v0
.end method

.method public e()Lretrofit2/h;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lretrofit2/h",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 52
    new-instance v0, Lretrofit2/h;

    iget-object v1, p0, Lretrofit2/h;->a:Lretrofit2/n;

    iget-object v2, p0, Lretrofit2/h;->b:[Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lretrofit2/h;-><init>(Lretrofit2/n;[Ljava/lang/Object;)V

    return-object v0
.end method
