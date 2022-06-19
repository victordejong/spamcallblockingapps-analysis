.class public final Lcom/google/api/client/util/f0/a;
.super Ljava/lang/Object;
.source "CharEscapers.java"


# static fields
.field private static final a:Lcom/google/api/client/util/f0/b;

.field private static final b:Lcom/google/api/client/util/f0/b;

.field private static final c:Lcom/google/api/client/util/f0/b;

.field private static final d:Lcom/google/api/client/util/f0/b;

.field private static final e:Lcom/google/api/client/util/f0/b;

.field private static final f:Lcom/google/api/client/util/f0/b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/api/client/util/f0/c;

    const-string v1, "-_.*"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/api/client/util/f0/c;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/google/api/client/util/f0/a;->a:Lcom/google/api/client/util/f0/b;

    .line 2
    new-instance v0, Lcom/google/api/client/util/f0/c;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/api/client/util/f0/c;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/google/api/client/util/f0/a;->b:Lcom/google/api/client/util/f0/b;

    .line 3
    new-instance v0, Lcom/google/api/client/util/f0/c;

    const-string v1, "-_.!~*\'()@:$&,;=+"

    invoke-direct {v0, v1}, Lcom/google/api/client/util/f0/c;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/api/client/util/f0/a;->c:Lcom/google/api/client/util/f0/b;

    .line 4
    new-instance v0, Lcom/google/api/client/util/f0/c;

    const-string v1, "-_.!~*\'()@:$&,;=+/?"

    invoke-direct {v0, v1}, Lcom/google/api/client/util/f0/c;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/api/client/util/f0/a;->d:Lcom/google/api/client/util/f0/b;

    .line 5
    new-instance v0, Lcom/google/api/client/util/f0/c;

    const-string v1, "-_.!~*\'():$&,;="

    invoke-direct {v0, v1}, Lcom/google/api/client/util/f0/c;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/api/client/util/f0/a;->e:Lcom/google/api/client/util/f0/b;

    .line 6
    new-instance v0, Lcom/google/api/client/util/f0/c;

    const-string v1, "-_.!~*\'()@:$,;/?:"

    invoke-direct {v0, v1}, Lcom/google/api/client/util/f0/c;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/api/client/util/f0/a;->f:Lcom/google/api/client/util/f0/b;

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    :try_start_0
    const-string v0, "+"

    const-string v1, "%2B"

    .line 1
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    sget-object v0, Lcom/google/api/client/util/f0/a;->a:Lcom/google/api/client/util/f0/b;

    invoke-virtual {v0, p0}, Lcom/google/api/client/util/f0/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/api/client/util/f0/a;->b:Lcom/google/api/client/util/f0/b;

    invoke-virtual {v0, p0}, Lcom/google/api/client/util/f0/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static e(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/api/client/util/f0/a;->c:Lcom/google/api/client/util/f0/b;

    invoke-virtual {v0, p0}, Lcom/google/api/client/util/f0/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static f(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/api/client/util/f0/a;->d:Lcom/google/api/client/util/f0/b;

    invoke-virtual {v0, p0}, Lcom/google/api/client/util/f0/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static g(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/api/client/util/f0/a;->f:Lcom/google/api/client/util/f0/b;

    invoke-virtual {v0, p0}, Lcom/google/api/client/util/f0/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static h(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/api/client/util/f0/a;->e:Lcom/google/api/client/util/f0/b;

    invoke-virtual {v0, p0}, Lcom/google/api/client/util/f0/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
