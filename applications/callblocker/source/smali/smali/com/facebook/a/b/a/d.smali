.class public Lcom/facebook/a/b/a/d;
.super Ljava/lang/Object;
.source "SensitiveUserDataUtils.java"


# direct methods
.method public static a(Landroid/view/View;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 33
    instance-of v1, p0, Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 34
    check-cast p0, Landroid/widget/TextView;

    .line 35
    invoke-static {p0}, Lcom/facebook/a/b/a/d;->a(Landroid/widget/TextView;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/facebook/a/b/a/d;->f(Landroid/widget/TextView;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/facebook/a/b/a/d;->c(Landroid/widget/TextView;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 36
    invoke-static {p0}, Lcom/facebook/a/b/a/d;->d(Landroid/widget/TextView;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/facebook/a/b/a/d;->e(Landroid/widget/TextView;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 37
    invoke-static {p0}, Lcom/facebook/a/b/a/d;->b(Landroid/widget/TextView;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 39
    :cond_1
    return v0
.end method

.method private static a(Landroid/widget/TextView;)Z
    .locals 2

    .prologue
    .line 43
    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    move-result v0

    .line 44
    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    .line 45
    const/4 v0, 0x1

    .line 48
    :goto_0
    return v0

    .line 47
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v0

    .line 48
    instance-of v0, v0, Landroid/text/method/PasswordTransformationMethod;

    goto :goto_0
.end method

.method private static b(Landroid/widget/TextView;)Z
    .locals 2

    .prologue
    .line 52
    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    move-result v0

    .line 53
    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    .line 54
    const/4 v0, 0x1

    .line 60
    :goto_0
    return v0

    .line 56
    :cond_0
    invoke-static {p0}, Lcom/facebook/a/b/a/f;->e(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    .line 57
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 58
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 60
    :cond_2
    sget-object v1, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    goto :goto_0
.end method

.method private static c(Landroid/widget/TextView;)Z
    .locals 2

    .prologue
    .line 64
    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    move-result v0

    .line 65
    const/16 v1, 0x60

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static d(Landroid/widget/TextView;)Z
    .locals 2

    .prologue
    .line 69
    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    move-result v0

    .line 70
    const/16 v1, 0x70

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static e(Landroid/widget/TextView;)Z
    .locals 2

    .prologue
    .line 74
    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    move-result v0

    .line 75
    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static f(Landroid/widget/TextView;)Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 79
    invoke-static {p0}, Lcom/facebook/a/b/a/f;->e(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "\\s"

    const-string/jumbo v4, ""

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 80
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    .line 81
    const/16 v3, 0xc

    if-lt v0, v3, :cond_0

    const/16 v3, 0x13

    if-le v0, v3, :cond_1

    .line 104
    :cond_0
    :goto_0
    return v2

    .line 86
    :cond_1
    add-int/lit8 v0, v0, -0x1

    move v3, v0

    move v4, v2

    move v5, v2

    :goto_1
    if-ltz v3, :cond_4

    .line 88
    invoke-virtual {v6, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 89
    const/16 v7, 0x30

    if-lt v0, v7, :cond_0

    const/16 v7, 0x39

    if-gt v0, v7, :cond_0

    .line 92
    add-int/lit8 v0, v0, -0x30

    .line 93
    if-eqz v4, :cond_2

    .line 95
    mul-int/lit8 v0, v0, 0x2

    .line 96
    const/16 v7, 0x9

    if-le v0, v7, :cond_2

    .line 98
    rem-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0x1

    .line 101
    :cond_2
    add-int/2addr v5, v0

    .line 102
    if-nez v4, :cond_3

    move v0, v1

    .line 86
    :goto_2
    add-int/lit8 v3, v3, -0x1

    move v4, v0

    goto :goto_1

    :cond_3
    move v0, v2

    .line 102
    goto :goto_2

    .line 104
    :cond_4
    rem-int/lit8 v0, v5, 0xa

    if-nez v0, :cond_5

    :goto_3
    move v2, v1

    goto :goto_0

    :cond_5
    move v1, v2

    goto :goto_3
.end method
