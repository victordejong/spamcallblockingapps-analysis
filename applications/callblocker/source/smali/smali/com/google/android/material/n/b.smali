.class public Lcom/google/android/material/n/b;
.super Ljava/lang/Object;
.source "MaterialAttributes.java"


# direct methods
.method public static a(Landroid/content/Context;ILjava/lang/String;)I
    .locals 5

    .prologue
    .line 62
    invoke-static {p0, p1}, Lcom/google/android/material/n/b;->a(Landroid/content/Context;I)Landroid/util/TypedValue;

    move-result-object v0

    .line 63
    if-nez v0, :cond_0

    .line 64
    const-string/jumbo v0, "%1$s requires a value for the %2$s attribute to be set in your app theme. You can either set the attribute in your theme or update your theme to inherit from Theme.MaterialComponents (or a descendant)."

    .line 68
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    .line 72
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 69
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 74
    :cond_0
    iget v0, v0, Landroid/util/TypedValue;->data:I

    return v0
.end method

.method public static a(Landroid/view/View;I)I
    .locals 2

    .prologue
    .line 84
    .line 85
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    .line 84
    invoke-static {v0, p1, v1}, Lcom/google/android/material/n/b;->a(Landroid/content/Context;ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static a(Landroid/content/Context;I)Landroid/util/TypedValue;
    .locals 3

    .prologue
    .line 46
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 47
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;IZ)Z
    .locals 3

    .prologue
    .line 106
    invoke-static {p0, p1}, Lcom/google/android/material/n/b;->a(Landroid/content/Context;I)Landroid/util/TypedValue;

    move-result-object v0

    .line 107
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/16 v2, 0x12

    if-ne v1, v2, :cond_0

    iget v0, v0, Landroid/util/TypedValue;->data:I

    if-eqz v0, :cond_1

    const/4 p2, 0x1

    :cond_0
    :goto_0
    return p2

    :cond_1
    const/4 p2, 0x0

    goto :goto_0
.end method
