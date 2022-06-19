.class public Lz2/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll9/a;
.implements Lo7/a;


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ll9/a;Ll9/a;Ll9/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lz2/x;->a:Ljava/lang/Object;

    .line 3
    iput-object p2, p0, Lz2/x;->b:Ljava/lang/Object;

    .line 4
    iput-object p3, p0, Lz2/x;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ls6/g;Ls6/i;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p2, p0, Lz2/x;->b:Ljava/lang/Object;

    .line 7
    iput-object p1, p0, Lz2/x;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Ln7/h;Lk7/o;Ll7/a;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lz2/x;->a:Ljava/lang/Object;

    check-cast p1, [B

    if-nez p1, :cond_0

    .line 2
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 3
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 4
    iget-object v1, p0, Lz2/x;->c:Ljava/lang/Object;

    check-cast v1, Ls6/g;

    iget-object v2, p0, Lz2/x;->b:Ljava/lang/Object;

    check-cast v2, Ls6/i;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :try_start_0
    new-instance v3, Lw6/b;

    invoke-direct {v3, v0}, Lw6/b;-><init>(Ljava/io/Writer;)V

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, v3, Lw6/b;->i:Z

    .line 7
    invoke-virtual {v1, v2, v3}, Ls6/g;->a(Ls6/i;Lw6/b;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    iput-object p1, p0, Lz2/x;->a:Ljava/lang/Object;

    goto :goto_0

    :catch_0
    move-exception p1

    .line 9
    new-instance p2, Lcom/google/gson/JsonIOException;

    invoke-direct {p2, p1}, Lcom/google/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 10
    :cond_0
    :goto_0
    iget-object p1, p0, Lz2/x;->a:Ljava/lang/Object;

    check-cast p1, [B

    invoke-static {p2, p1, p3}, Li4/d;->I(Lk7/o;[BLl7/a;)V

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    const-string v0, "application/json"

    return-object v0
.end method

.method public get()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lz2/x;->a:Ljava/lang/Object;

    check-cast v0, Ll9/a;

    invoke-interface {v0}, Ll9/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lz2/x;->b:Ljava/lang/Object;

    check-cast v1, Ll9/a;

    invoke-interface {v1}, Ll9/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lz2/x;->c:Ljava/lang/Object;

    check-cast v2, Ll9/a;

    invoke-interface {v2}, Ll9/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 2
    new-instance v3, Lz2/w;

    invoke-direct {v3, v0, v1, v2}, Lz2/w;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    return-object v3
.end method

.method public length()I
    .locals 1

    .line 1
    iget-object v0, p0, Lz2/x;->a:Ljava/lang/Object;

    check-cast v0, [B

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lz2/x;->b:Ljava/lang/Object;

    check-cast v0, Ls6/i;

    invoke-virtual {v0}, Ls6/i;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lz2/x;->a:Ljava/lang/Object;

    .line 3
    :cond_0
    iget-object v0, p0, Lz2/x;->a:Ljava/lang/Object;

    check-cast v0, [B

    array-length v0, v0

    return v0
.end method
