.class public Lk7/q$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk7/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk7/q;


# direct methods
.method public constructor <init>(Lk7/q;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk7/q$a;->a:Lk7/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lk7/q$a;->a:Lk7/q;

    iget-object v1, v0, Lk7/q;->i:Ljava/nio/channels/FileChannel;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lk7/q$a;->a:Lk7/q;

    iget-object v2, v2, Lk7/q;->e:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    iput-object v1, v0, Lk7/q;->i:Ljava/nio/channels/FileChannel;

    .line 3
    :cond_0
    iget-object v0, p0, Lk7/q$a;->a:Lk7/q;

    iget-object v0, v0, Lk7/q;->h:Lk7/l;

    invoke-virtual {v0}, Lk7/l;->j()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lk7/q$a;->a:Lk7/q;

    iget-object v1, v0, Lk7/q;->h:Lk7/l;

    invoke-static {v0, v1}, Li4/d;->p(Lk7/m;Lk7/l;)V

    .line 5
    iget-object v0, p0, Lk7/q$a;->a:Lk7/q;

    iget-object v0, v0, Lk7/q;->h:Lk7/l;

    invoke-virtual {v0}, Lk7/l;->j()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/16 v0, 0x2000

    .line 6
    invoke-static {v0}, Lk7/l;->k(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, -0x1

    .line 7
    iget-object v2, p0, Lk7/q$a;->a:Lk7/q;

    iget-object v2, v2, Lk7/q;->i:Ljava/nio/channels/FileChannel;

    invoke-virtual {v2, v0}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 8
    iget-object v0, p0, Lk7/q$a;->a:Lk7/q;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lk7/q;->n(Ljava/lang/Exception;)V

    return-void

    .line 9
    :cond_2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 10
    iget-object v1, p0, Lk7/q$a;->a:Lk7/q;

    iget-object v1, v1, Lk7/q;->h:Lk7/l;

    invoke-virtual {v1, v0}, Lk7/l;->a(Ljava/nio/ByteBuffer;)Lk7/l;

    .line 11
    iget-object v0, p0, Lk7/q$a;->a:Lk7/q;

    iget-object v1, v0, Lk7/q;->h:Lk7/l;

    invoke-static {v0, v1}, Li4/d;->p(Lk7/m;Lk7/l;)V

    .line 12
    iget-object v0, p0, Lk7/q$a;->a:Lk7/q;

    iget-object v1, v0, Lk7/q;->h:Lk7/l;

    .line 13
    iget v1, v1, Lk7/l;->c:I

    if-nez v1, :cond_3

    .line 14
    iget-boolean v0, v0, Lk7/q;->g:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 15
    iget-object v1, p0, Lk7/q$a;->a:Lk7/q;

    invoke-virtual {v1, v0}, Lk7/q;->n(Ljava/lang/Exception;)V

    :cond_3
    :goto_0
    return-void
.end method
