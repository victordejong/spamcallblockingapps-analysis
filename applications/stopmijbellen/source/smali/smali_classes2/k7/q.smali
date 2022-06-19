.class public Lk7/q;
.super Lk7/n;
.source "SourceFile"


# instance fields
.field public d:Lk7/h;

.field public e:Ljava/io/File;

.field public f:Ll7/c;

.field public g:Z

.field public h:Lk7/l;

.field public i:Ljava/nio/channels/FileChannel;

.field public j:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lk7/h;Ljava/io/File;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lk7/n;-><init>()V

    .line 2
    new-instance v0, Lk7/l;

    invoke-direct {v0}, Lk7/l;-><init>()V

    iput-object v0, p0, Lk7/q;->h:Lk7/l;

    .line 3
    new-instance v0, Lk7/q$a;

    invoke-direct {v0, p0}, Lk7/q$a;-><init>(Lk7/q;)V

    iput-object v0, p0, Lk7/q;->j:Ljava/lang/Runnable;

    .line 4
    iput-object p1, p0, Lk7/q;->d:Lk7/h;

    .line 5
    iput-object p2, p0, Lk7/q;->e:Ljava/io/File;

    .line 6
    invoke-virtual {p1}, Lk7/h;->d()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lk7/q;->g:Z

    if-nez p1, :cond_0

    .line 7
    iget-object p1, p0, Lk7/q;->d:Lk7/h;

    iget-object p2, p0, Lk7/q;->j:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Lk7/h;->g(Ljava/lang/Runnable;)Lm7/a;

    :cond_0
    return-void
.end method


# virtual methods
.method public a()Lk7/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lk7/q;->d:Lk7/h;

    return-object v0
.end method

.method public b(Ll7/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk7/q;->f:Ll7/c;

    return-void
.end method

.method public close()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lk7/q;->i:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public e()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lk7/q;->g:Z

    return v0
.end method

.method public i()Ll7/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lk7/q;->f:Ll7/c;

    return-object v0
.end method

.method public n(Ljava/lang/Exception;)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/io/Closeable;

    .line 1
    iget-object v1, p0, Lk7/q;->i:Ljava/nio/channels/FileChannel;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ly/d;->e([Ljava/io/Closeable;)V

    .line 2
    invoke-super {p0, p1}, Lk7/n;->n(Ljava/lang/Exception;)V

    return-void
.end method
