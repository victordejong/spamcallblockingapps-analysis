.class public Lo7/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo7/a;


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/String;Ln7/w;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p3, p0, Lo7/b;->c:Ljava/lang/Object;

    .line 3
    iput p1, p0, Lo7/b;->a:I

    .line 4
    iput-object p2, p0, Lo7/b;->b:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/io/InputStream;I)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "application/binary"

    .line 6
    iput-object v0, p0, Lo7/b;->b:Ljava/lang/String;

    .line 7
    iput-object p1, p0, Lo7/b;->c:Ljava/lang/Object;

    .line 8
    iput p2, p0, Lo7/b;->a:I

    return-void
.end method


# virtual methods
.method public a(Ln7/h;Lk7/o;Ll7/a;)V
    .locals 6

    .line 1
    iget-object p1, p0, Lo7/b;->c:Ljava/lang/Object;

    move-object v2, p1

    check-cast v2, Ljava/io/InputStream;

    iget p1, p0, Lo7/b;->a:I

    if-gez p1, :cond_0

    const-wide/32 v0, 0x7fffffff

    goto :goto_0

    :cond_0
    int-to-long v0, p1

    :goto_0
    move-wide v3, v0

    .line 2
    new-instance p1, Lk7/x;

    invoke-direct {p1, p3}, Lk7/x;-><init>(Ll7/a;)V

    .line 3
    new-instance p3, Lk7/y;

    move-object v0, p3

    move-object v1, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lk7/y;-><init>(Lk7/o;Ljava/io/InputStream;JLl7/a;)V

    .line 4
    invoke-interface {p2, p3}, Lk7/o;->m(Ll7/f;)V

    .line 5
    invoke-interface {p2, p1}, Lk7/o;->g(Ll7/a;)V

    .line 6
    invoke-virtual {p3}, Lk7/y;->f()V

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lo7/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public length()I
    .locals 1

    .line 1
    iget v0, p0, Lo7/b;->a:I

    return v0
.end method
