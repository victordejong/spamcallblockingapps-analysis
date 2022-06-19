.class public final synthetic Lc/q;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000L\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a\n\u0010\n\u001a\u00020\u000b*\u00020\u000c\u001a\u0016\u0010\r\u001a\u00020\u000b*\u00020\u000c2\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u0006H\u0007\u001a\n\u0010\r\u001a\u00020\u000b*\u00020\u000f\u001a\n\u0010\r\u001a\u00020\u000b*\u00020\u0010\u001a%\u0010\r\u001a\u00020\u000b*\u00020\u00112\u0012\u0010\u0012\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00140\u0013\"\u00020\u0014H\u0007\u00a2\u0006\u0002\u0010\u0015\u001a\n\u0010\u0016\u001a\u00020\u0017*\u00020\u000c\u001a\n\u0010\u0016\u001a\u00020\u0017*\u00020\u0018\u001a\n\u0010\u0016\u001a\u00020\u0017*\u00020\u0010\u001a%\u0010\u0016\u001a\u00020\u0017*\u00020\u00112\u0012\u0010\u0012\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00140\u0013\"\u00020\u0014H\u0007\u00a2\u0006\u0002\u0010\u0019\"\u001c\u0010\u0000\u001a\n \u0002*\u0004\u0018\u00010\u00010\u0001X\u0082\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0003\u0010\u0004\"\u001c\u0010\u0005\u001a\u00020\u0006*\u00060\u0007j\u0002`\u00088@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\t\u00a8\u0006\u001a"
    }
    d2 = {
        "logger",
        "Ljava/util/logging/Logger;",
        "kotlin.jvm.PlatformType",
        "getLogger$Okio__JvmOkioKt",
        "()Ljava/util/logging/Logger;",
        "isAndroidGetsocknameError",
        "",
        "Ljava/lang/AssertionError;",
        "Lkotlin/AssertionError;",
        "(Ljava/lang/AssertionError;)Z",
        "appendingSink",
        "Lokio/Sink;",
        "Ljava/io/File;",
        "sink",
        "append",
        "Ljava/io/OutputStream;",
        "Ljava/net/Socket;",
        "Ljava/nio/file/Path;",
        "options",
        "",
        "Ljava/nio/file/OpenOption;",
        "(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Lokio/Sink;",
        "source",
        "Lokio/Source;",
        "Ljava/io/InputStream;",
        "(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Lokio/Source;",
        "okio"
    }
    k = 0x5
    mv = {
        0x1,
        0x4,
        0x0
    }
    xs = "okio/Okio"
.end annotation


# static fields
.field private static final a:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "okio.Okio"

    .line 139
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lc/q;->a:Ljava/util/logging/Logger;

    return-void
.end method

.method public static final a(Ljava/io/File;)Lc/ab;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    const-string v0, "$this$appendingSink"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    new-instance v0, Ljava/io/FileOutputStream;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    check-cast v0, Ljava/io/OutputStream;

    .line 4001
    invoke-static {v0}, Lc/q;->a(Ljava/io/OutputStream;)Lc/ab;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Ljava/io/File;ZI)Lc/ab;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    const-string p1, "$this$sink"

    .line 2001
    invoke-static {p0, p1}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2170
    new-instance p1, Ljava/io/FileOutputStream;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    check-cast p1, Ljava/io/OutputStream;

    .line 3001
    invoke-static {p1}, Lc/q;->a(Ljava/io/OutputStream;)Lc/ab;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/io/OutputStream;)Lc/ab;
    .locals 2

    const-string v0, "$this$sink"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    new-instance v0, Lc/t;

    new-instance v1, Lc/ae;

    invoke-direct {v1}, Lc/ae;-><init>()V

    invoke-direct {v0, p0, v1}, Lc/t;-><init>(Ljava/io/OutputStream;Lc/ae;)V

    check-cast v0, Lc/ab;

    return-object v0
.end method

.method public static final a(Ljava/net/Socket;)Lc/ab;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "$this$sink"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    new-instance v0, Lc/ac;

    invoke-direct {v0, p0}, Lc/ac;-><init>(Ljava/net/Socket;)V

    .line 123
    new-instance v1, Lc/t;

    invoke-virtual {p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p0

    const-string v2, "getOutputStream()"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v0

    check-cast v2, Lc/ae;

    invoke-direct {v1, p0, v2}, Lc/t;-><init>(Ljava/io/OutputStream;Lc/ae;)V

    .line 124
    check-cast v1, Lc/ab;

    invoke-virtual {v0, v1}, Lc/ac;->sink(Lc/ab;)Lc/ab;

    move-result-object p0

    return-object p0
.end method

.method public static final a(Ljava/io/InputStream;)Lc/ad;
    .locals 2

    const-string v0, "$this$source"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    new-instance v0, Lc/p;

    new-instance v1, Lc/ae;

    invoke-direct {v1}, Lc/ae;-><init>()V

    invoke-direct {v0, p0, v1}, Lc/p;-><init>(Ljava/io/InputStream;Lc/ae;)V

    check-cast v0, Lc/ad;

    return-object v0
.end method

.method public static final synthetic a()Ljava/util/logging/Logger;
    .locals 1

    .line 1
    sget-object v0, Lc/q;->a:Ljava/util/logging/Logger;

    return-object v0
.end method

.method public static final a(Ljava/lang/AssertionError;)Z
    .locals 2

    const-string v0, "$this$isAndroidGetsocknameError"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 197
    invoke-virtual {p0}, Ljava/lang/AssertionError;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    check-cast p0, Ljava/lang/CharSequence;

    const-string v0, "getsockname failed"

    check-cast v0, Ljava/lang/CharSequence;

    .line 5138
    invoke-static {p0, v0, v1}, Lkotlin/h/p;->c(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public static final b(Ljava/io/File;)Lc/ad;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    const-string v0, "$this$source"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    check-cast v0, Ljava/io/InputStream;

    .line 5001
    invoke-static {v0}, Lc/q;->a(Ljava/io/InputStream;)Lc/ad;

    move-result-object p0

    return-object p0
.end method

.method public static final b(Ljava/net/Socket;)Lc/ad;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "$this$source"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    new-instance v0, Lc/ac;

    invoke-direct {v0, p0}, Lc/ac;-><init>(Ljava/net/Socket;)V

    .line 135
    new-instance v1, Lc/p;

    invoke-virtual {p0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    const-string v2, "getInputStream()"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v0

    check-cast v2, Lc/ae;

    invoke-direct {v1, p0, v2}, Lc/p;-><init>(Ljava/io/InputStream;Lc/ae;)V

    .line 136
    check-cast v1, Lc/ad;

    invoke-virtual {v0, v1}, Lc/ac;->source(Lc/ad;)Lc/ad;

    move-result-object p0

    return-object p0
.end method
