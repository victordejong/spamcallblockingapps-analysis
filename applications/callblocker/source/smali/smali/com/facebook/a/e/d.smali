.class public Lcom/facebook/a/e/d;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 43
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 44
    const-string/jumbo v1, "\\s+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 45
    const-string/jumbo v1, " "

    invoke-static {v1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 46
    return-object v0
.end method

.method static a(Ljava/lang/String;I)[I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 29
    new-array v2, p1, [I

    .line 30
    invoke-static {p0}, Lcom/facebook/a/e/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 31
    const-string/jumbo v3, "UTF-8"

    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    move v0, v1

    .line 32
    :goto_0
    if-ge v0, p1, :cond_1

    .line 33
    array-length v4, v3

    if-ge v0, v4, :cond_0

    .line 34
    aget-byte v4, v3, v0

    and-int/lit16 v4, v4, 0xff

    aput v4, v2, v0

    .line 32
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 36
    :cond_0
    aput v1, v2, v0

    goto :goto_1

    .line 39
    :cond_1
    return-object v2
.end method
