.class public Lt7/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lt7/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lt7/c;


# direct methods
.method public constructor <init>(Lt7/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lt7/c$a;->a:Lt7/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const-wide/16 v0, 0x0

    .line 1
    :try_start_0
    iget-object v2, p0, Lt7/c$a;->a:Lt7/c;

    iget-object v2, v2, Lt7/c;->e:Lk7/l;

    invoke-virtual {v2}, Lk7/l;->j()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2
    iget-object v2, p0, Lt7/c$a;->a:Lt7/c;

    .line 3
    iget-object v2, v2, Lt7/c;->a:Lk7/h;

    .line 4
    new-instance v3, Lt7/c$a$a;

    invoke-direct {v3, p0}, Lt7/c$a$a;-><init>(Lt7/c$a;)V

    invoke-virtual {v2, v3}, Lk7/h;->k(Ljava/lang/Runnable;)V

    .line 5
    iget-object v2, p0, Lt7/c$a;->a:Lt7/c;

    iget-object v2, v2, Lt7/c;->e:Lk7/l;

    invoke-virtual {v2}, Lk7/l;->j()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 6
    :cond_0
    :goto_0
    iget-object v2, p0, Lt7/c$a;->a:Lt7/c;

    iget v2, v2, Lt7/c;->d:I

    const/16 v3, 0x1000

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/high16 v3, 0x40000

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v2}, Lk7/l;->k(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    const/4 v3, -0x1

    .line 7
    iget-object v4, p0, Lt7/c$a;->a:Lt7/c;

    iget-object v4, v4, Lt7/c;->b:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 8
    iget-object v2, p0, Lt7/c$a;->a:Lt7/c;

    const/4 v3, 0x0

    .line 9
    iget-object v4, v2, Lt7/c;->a:Lk7/h;

    .line 10
    new-instance v5, Lt7/b;

    invoke-direct {v5, v2, v3}, Lt7/b;-><init>(Lt7/c;Ljava/lang/Exception;)V

    .line 11
    invoke-virtual {v4, v5, v0, v1}, Lk7/h;->i(Ljava/lang/Runnable;J)Lm7/a;

    return-void

    .line 12
    :cond_1
    iget-object v3, p0, Lt7/c$a;->a:Lt7/c;

    mul-int/lit8 v5, v4, 0x2

    iput v5, v3, Lt7/c;->d:I

    .line 13
    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 14
    iget-object v3, p0, Lt7/c$a;->a:Lt7/c;

    iget-object v3, v3, Lt7/c;->e:Lk7/l;

    invoke-virtual {v3, v2}, Lk7/l;->a(Ljava/nio/ByteBuffer;)Lk7/l;

    .line 15
    iget-object v2, p0, Lt7/c$a;->a:Lt7/c;

    .line 16
    iget-object v2, v2, Lt7/c;->a:Lk7/h;

    .line 17
    new-instance v3, Lt7/c$a$b;

    invoke-direct {v3, p0}, Lt7/c$a$b;-><init>(Lt7/c$a;)V

    invoke-virtual {v2, v3}, Lk7/h;->k(Ljava/lang/Runnable;)V

    .line 18
    iget-object v2, p0, Lt7/c$a;->a:Lt7/c;

    iget-object v2, v2, Lt7/c;->e:Lk7/l;

    .line 19
    iget v2, v2, Lk7/l;->c:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_2

    goto :goto_0

    :catch_0
    move-exception v2

    .line 20
    iget-object v3, p0, Lt7/c$a;->a:Lt7/c;

    .line 21
    iget-object v4, v3, Lt7/c;->a:Lk7/h;

    .line 22
    new-instance v5, Lt7/b;

    invoke-direct {v5, v3, v2}, Lt7/b;-><init>(Lt7/c;Ljava/lang/Exception;)V

    .line 23
    invoke-virtual {v4, v5, v0, v1}, Lk7/h;->i(Ljava/lang/Runnable;J)Lm7/a;

    :cond_2
    return-void
.end method
