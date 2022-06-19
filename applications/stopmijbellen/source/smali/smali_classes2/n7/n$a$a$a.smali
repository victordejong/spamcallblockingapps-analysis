.class public Ln7/n$a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk7/s$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln7/n$a$a;->a(Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public final synthetic b:Ln7/n$a$a;


# direct methods
.method public constructor <init>(Ln7/n$a$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln7/n$a$a$a;->b:Ln7/n$a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 7

    .line 1
    iget-object v0, p0, Ln7/n$a$a$a;->b:Ln7/n$a$a;

    iget-object v0, v0, Ln7/n$a$a;->b:Ln7/n$a;

    iget-object v0, v0, Ln7/n$a;->c:Ln7/g$a;

    iget-object v0, v0, Ln7/g$e;->b:Ln7/h;

    invoke-virtual {v0, p1}, Ln7/h;->e(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Ln7/n$a$a$a;->a:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ln7/n$a$a$a;->a:Ljava/lang/String;

    const-string v0, "HTTP/1.\\d 2\\d\\d .*"

    .line 4
    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 5
    iget-object p1, p0, Ln7/n$a$a$a;->b:Ln7/n$a$a;

    iget-object p1, p1, Ln7/n$a$a;->a:Lk7/j;

    invoke-interface {p1, v1}, Lk7/m;->b(Ll7/c;)V

    .line 6
    iget-object p1, p0, Ln7/n$a$a$a;->b:Ln7/n$a$a;

    iget-object p1, p1, Ln7/n$a$a;->a:Lk7/j;

    invoke-interface {p1, v1}, Lk7/m;->h(Ll7/a;)V

    .line 7
    iget-object p1, p0, Ln7/n$a$a$a;->b:Ln7/n$a$a;

    iget-object p1, p1, Ln7/n$a$a;->b:Ln7/n$a;

    iget-object p1, p1, Ln7/n$a;->a:Ll7/b;

    new-instance v0, Ljava/io/IOException;

    const-string v1, "non 2xx status line: "

    invoke-static {v1}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ln7/n$a$a$a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ln7/n$a$a$a;->b:Ln7/n$a$a;

    iget-object v1, v1, Ln7/n$a$a;->a:Lk7/j;

    invoke-interface {p1, v0, v1}, Ll7/b;->a(Ljava/lang/Exception;Lk7/j;)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 9
    iget-object p1, p0, Ln7/n$a$a$a;->b:Ln7/n$a$a;

    iget-object p1, p1, Ln7/n$a$a;->a:Lk7/j;

    invoke-interface {p1, v1}, Lk7/m;->b(Ll7/c;)V

    .line 10
    iget-object p1, p0, Ln7/n$a$a$a;->b:Ln7/n$a$a;

    iget-object p1, p1, Ln7/n$a$a;->a:Lk7/j;

    invoke-interface {p1, v1}, Lk7/m;->h(Ll7/a;)V

    .line 11
    iget-object p1, p0, Ln7/n$a$a$a;->b:Ln7/n$a$a;

    iget-object v0, p1, Ln7/n$a$a;->b:Ln7/n$a;

    iget-object v1, v0, Ln7/n$a;->f:Ln7/n;

    iget-object v2, p1, Ln7/n$a$a;->a:Lk7/j;

    iget-object v3, v0, Ln7/n$a;->c:Ln7/g$a;

    iget-object v4, v0, Ln7/n$a;->d:Landroid/net/Uri;

    iget v5, v0, Ln7/n$a;->e:I

    iget-object v6, v0, Ln7/n$a;->a:Ll7/b;

    invoke-virtual/range {v1 .. v6}, Ln7/n;->p(Lk7/j;Ln7/g$a;Landroid/net/Uri;ILl7/b;)V

    :cond_1
    :goto_0
    return-void
.end method
