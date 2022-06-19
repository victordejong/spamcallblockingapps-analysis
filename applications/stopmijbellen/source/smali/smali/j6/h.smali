.class public final Lj6/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/regex/Pattern;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "(^|.*\\s)datatransport/\\S+ android/($|\\s.*)"

    .line 1
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lj6/h;->a:Ljava/util/regex/Pattern;

    return-void
.end method

.method public static a(Lorg/apache/http/HttpMessage;)Ljava/lang/Long;
    .locals 2

    :try_start_0
    const-string v0, "content-length"

    .line 1
    invoke-interface {p0, v0}, Lorg/apache/http/HttpMessage;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    invoke-interface {p0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    nop

    .line 3
    invoke-static {}, Lg6/a;->b()Lg6/a;

    move-result-object p0

    .line 4
    iget-boolean v0, p0, Lg6/a;->b:Z

    if-eqz v0, :cond_0

    .line 5
    iget-object p0, p0, Lg6/a;->a:Lg6/b;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static b(Lorg/apache/http/HttpResponse;)Ljava/lang/String;
    .locals 1

    const-string v0, "content-type"

    .line 1
    invoke-interface {p0, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    invoke-interface {p0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static c(Lh6/b;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lh6/b;->d:Lo6/h$b;

    .line 2
    iget-object v0, v0, Lcom/google/protobuf/i$a;->b:Lcom/google/protobuf/i;

    check-cast v0, Lo6/h;

    invoke-virtual {v0}, Lo6/h;->Z()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lh6/b;->d:Lo6/h$b;

    sget-object v1, Lo6/h$e;->c:Lo6/h$e;

    .line 4
    invoke-virtual {v0}, Lcom/google/protobuf/i$a;->n()V

    .line 5
    iget-object v0, v0, Lcom/google/protobuf/i$a;->b:Lcom/google/protobuf/i;

    check-cast v0, Lo6/h;

    invoke-static {v0, v1}, Lo6/h;->A(Lo6/h;Lo6/h$e;)V

    .line 6
    :cond_0
    invoke-virtual {p0}, Lh6/b;->b()Lo6/h;

    return-void
.end method
