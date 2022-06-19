.class public Ln7/n$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll7/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln7/n;->o(Ln7/g$a;Landroid/net/Uri;IZLl7/b;)Ll7/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ll7/b;

.field public final synthetic b:Z

.field public final synthetic c:Ln7/g$a;

.field public final synthetic d:Landroid/net/Uri;

.field public final synthetic e:I

.field public final synthetic f:Ln7/n;


# direct methods
.method public constructor <init>(Ln7/n;Ll7/b;ZLn7/g$a;Landroid/net/Uri;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln7/n$a;->f:Ln7/n;

    iput-object p2, p0, Ln7/n$a;->a:Ll7/b;

    iput-boolean p3, p0, Ln7/n$a;->b:Z

    iput-object p4, p0, Ln7/n$a;->c:Ln7/g$a;

    iput-object p5, p0, Ln7/n$a;->d:Landroid/net/Uri;

    iput p6, p0, Ln7/n$a;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;Lk7/j;)V
    .locals 6

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Ln7/n$a;->a:Ll7/b;

    invoke-interface {v0, p1, p2}, Ll7/b;->a(Ljava/lang/Exception;Lk7/j;)V

    return-void

    .line 2
    :cond_0
    iget-boolean p1, p0, Ln7/n$a;->b:Z

    if-nez p1, :cond_1

    .line 3
    iget-object v0, p0, Ln7/n$a;->f:Ln7/n;

    iget-object v2, p0, Ln7/n$a;->c:Ln7/g$a;

    iget-object v3, p0, Ln7/n$a;->d:Landroid/net/Uri;

    iget v4, p0, Ln7/n$a;->e:I

    iget-object v5, p0, Ln7/n$a;->a:Ll7/b;

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Ln7/n;->p(Lk7/j;Ln7/g$a;Landroid/net/Uri;ILl7/b;)V

    return-void

    .line 4
    :cond_1
    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Ln7/n$a;->d:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Ln7/n$a;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Ln7/n$a;->d:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "CONNECT %s:%s HTTP/1.1\r\nHost: %s\r\n\r\n"

    invoke-static {p1, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 5
    iget-object v0, p0, Ln7/n$a;->c:Ln7/g$a;

    iget-object v0, v0, Ln7/g$e;->b:Ln7/h;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Proxying: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ln7/h;->e(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    new-instance v0, Ln7/n$a$a;

    invoke-direct {v0, p0, p2}, Ln7/n$a$a;-><init>(Ln7/n$a;Lk7/j;)V

    invoke-static {p2, p1, v0}, Li4/d;->I(Lk7/o;[BLl7/a;)V

    return-void
.end method
