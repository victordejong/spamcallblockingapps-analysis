.class public Le/a/b/b/g/l;
.super Le/a/b/b/g/e;
.source ""

# interfaces
.implements Li/a/a/a/i;


# direct methods
.method constructor <init>(Le/a/b/b/g/d;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Le/a/b/b/g/e;-><init>(Le/a/b/b/g/d;Ljava/lang/String;)V

    return-void
.end method

.method private g(Ljava/lang/String;)I
    .locals 3

    const-string v0, "px"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    return v2
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    const-string v0, "height"

    invoke-virtual {p0, v0}, Le/a/b/b/c;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Le/a/b/b/g/l;->g(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .locals 1

    const-string v0, "width"

    invoke-virtual {p0, v0}, Le/a/b/b/c;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Le/a/b/b/g/l;->g(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
