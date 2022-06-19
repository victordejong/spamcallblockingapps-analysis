.class public final Lcom/dropbox/core/DbxWrappedException;
.super Ljava/lang/Exception;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/lang/String;

.field public final c:Lcom/dropbox/core/n;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;Lcom/dropbox/core/n;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/dropbox/core/DbxWrappedException;->a:Ljava/lang/Object;

    .line 26
    iput-object p2, p0, Lcom/dropbox/core/DbxWrappedException;->b:Ljava/lang/String;

    .line 27
    iput-object p3, p0, Lcom/dropbox/core/DbxWrappedException;->c:Lcom/dropbox/core/n;

    return-void
.end method

.method public static a(Lcom/dropbox/core/a/c;Lcom/dropbox/core/http/a$b;Ljava/lang/String;)Lcom/dropbox/core/DbxWrappedException;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/dropbox/core/a/c<",
            "TT;>;",
            "Lcom/dropbox/core/http/a$b;",
            "Ljava/lang/String;",
            ")",
            "Lcom/dropbox/core/DbxWrappedException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 44
    invoke-static {p1}, Lcom/dropbox/core/i;->c(Lcom/dropbox/core/http/a$b;)Ljava/lang/String;

    move-result-object p2

    .line 46
    new-instance v0, Lcom/dropbox/core/a$a;

    invoke-direct {v0, p0}, Lcom/dropbox/core/a$a;-><init>(Lcom/dropbox/core/a/c;)V

    .line 1151
    iget-object p0, p1, Lcom/dropbox/core/http/a$b;->b:Ljava/io/InputStream;

    .line 47
    invoke-virtual {v0, p0}, Lcom/dropbox/core/a$a;->deserialize(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/a;

    .line 2026
    iget-object p1, p0, Lcom/dropbox/core/a;->a:Ljava/lang/Object;

    .line 51
    sget-object v0, Lcom/dropbox/core/i;->a:Lcom/dropbox/core/v2/a/a;

    .line 52
    invoke-static {v0, p1}, Lcom/dropbox/core/DbxWrappedException;->a(Lcom/dropbox/core/v2/a/a;Ljava/lang/Object;)V

    .line 2062
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "tag"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    .line 2063
    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 2064
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "value"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2065
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    array-length v4, v2

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v5, v2, v3

    .line 2066
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v1, 0x1

    .line 2067
    invoke-virtual {v5, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 2068
    invoke-virtual {v5, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 2069
    invoke-static {v0, v1}, Lcom/dropbox/core/DbxWrappedException;->a(Lcom/dropbox/core/v2/a/a;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 55
    :catch_0
    :cond_1
    :goto_1
    new-instance v0, Lcom/dropbox/core/DbxWrappedException;

    .line 3030
    iget-object p0, p0, Lcom/dropbox/core/a;->b:Lcom/dropbox/core/n;

    .line 55
    invoke-direct {v0, p1, p2, p0}, Lcom/dropbox/core/DbxWrappedException;-><init>(Ljava/lang/Object;Ljava/lang/String;Lcom/dropbox/core/n;)V

    return-object v0
.end method

.method private static a(Lcom/dropbox/core/v2/a/a;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/dropbox/core/v2/a/a;",
            "TT;)V"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 80
    invoke-interface {p0}, Lcom/dropbox/core/v2/a/a;->a()Lcom/dropbox/core/v2/a/b;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 4014
    iput-object p1, p0, Lcom/dropbox/core/v2/a/b;->a:Ljava/lang/Object;

    .line 83
    invoke-virtual {p0}, Lcom/dropbox/core/v2/a/b;->run()V

    :cond_0
    return-void
.end method
