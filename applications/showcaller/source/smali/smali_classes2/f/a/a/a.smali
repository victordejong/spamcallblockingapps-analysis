.class Lf/a/a/a;
.super Ljava/lang/Object;
.source "ChineseToPinyinResource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/a/a/a$b;
    }
.end annotation


# instance fields
.field private a:Lf/a/a/f/b;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lf/a/a/a;->a:Lf/a/a/f/b;

    .line 4
    invoke-direct {p0}, Lf/a/a/a;->e()V

    return-void
.end method

.method synthetic constructor <init>(Lf/a/a/a$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lf/a/a/a;-><init>()V

    return-void
.end method

.method private a(C)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-virtual {p0}, Lf/a/a/a;->d()Lf/a/a/f/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lf/a/a/f/b;->a(Ljava/lang/String;)Lf/a/a/f/b;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lf/a/a/f/b;->c()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    .line 4
    :goto_0
    invoke-direct {p0, p1}, Lf/a/a/a;->f(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v0, p1

    :cond_1
    return-object v0
.end method

.method static c()Lf/a/a/a;
    .locals 1

    .line 1
    sget-object v0, Lf/a/a/a$b;->a:Lf/a/a/a;

    return-object v0
.end method

.method private e()V
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Lf/a/a/f/b;

    invoke-direct {v0}, Lf/a/a/f/b;-><init>()V

    invoke-direct {p0, v0}, Lf/a/a/a;->h(Lf/a/a/f/b;)V

    .line 2
    invoke-virtual {p0}, Lf/a/a/a;->d()Lf/a/a/f/b;

    move-result-object v0

    const-string v1, "/pinyindb/unicode_to_hanyu_pinyin.txt"

    invoke-static {v1}, Lf/a/a/d;->a(Ljava/lang/String;)Ljava/io/BufferedInputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Lf/a/a/f/b;->d(Ljava/io/InputStream;)V

    .line 3
    invoke-virtual {p0}, Lf/a/a/a;->d()Lf/a/a/f/b;

    move-result-object v0

    const-string v1, "/pinyindb/multi_pinyin.txt"

    invoke-static {v1}, Lf/a/a/d;->a(Ljava/lang/String;)Ljava/io/BufferedInputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Lf/a/a/f/b;->e(Ljava/io/InputStream;)V

    .line 4
    invoke-virtual {p0}, Lf/a/a/a;->d()Lf/a/a/f/b;

    move-result-object v0

    invoke-virtual {v0}, Lf/a/a/f/b;->f()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private f(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "(none0)"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "("

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private h(Lf/a/a/f/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/a/a/a;->a:Lf/a/a/f/b;

    return-void
.end method


# virtual methods
.method b(C)[Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lf/a/a/a;->a(C)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1}, Lf/a/a/a;->g(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method d()Lf/a/a/f/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/a/a/a;->a:Lf/a/a/f/b;

    return-object v0
.end method

.method g(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "("

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const-string v1, ")"

    .line 2
    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v0, v0, 0x1

    .line 3
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string v0, ","

    .line 4
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
