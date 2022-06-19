.class public Landroidx/core/graphics/c;
.super Ljava/lang/Object;
.source "TypefaceCompat.java"


# static fields
.field private static final a:Landroidx/core/graphics/h;

.field private static final b:Landroidx/b/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/b/e",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 46
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 47
    new-instance v0, Landroidx/core/graphics/g;

    invoke-direct {v0}, Landroidx/core/graphics/g;-><init>()V

    sput-object v0, Landroidx/core/graphics/c;->a:Landroidx/core/graphics/h;

    .line 63
    :goto_0
    new-instance v0, Landroidx/b/e;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroidx/b/e;-><init>(I)V

    sput-object v0, Landroidx/core/graphics/c;->b:Landroidx/b/e;

    return-void

    .line 48
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    .line 49
    new-instance v0, Landroidx/core/graphics/f;

    invoke-direct {v0}, Landroidx/core/graphics/f;-><init>()V

    sput-object v0, Landroidx/core/graphics/c;->a:Landroidx/core/graphics/h;

    goto :goto_0

    .line 50
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_2

    .line 51
    invoke-static {}, Landroidx/core/graphics/e;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 52
    new-instance v0, Landroidx/core/graphics/e;

    invoke-direct {v0}, Landroidx/core/graphics/e;-><init>()V

    sput-object v0, Landroidx/core/graphics/c;->a:Landroidx/core/graphics/h;

    goto :goto_0

    .line 53
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_3

    .line 54
    new-instance v0, Landroidx/core/graphics/d;

    invoke-direct {v0}, Landroidx/core/graphics/d;-><init>()V

    sput-object v0, Landroidx/core/graphics/c;->a:Landroidx/core/graphics/h;

    goto :goto_0

    .line 56
    :cond_3
    new-instance v0, Landroidx/core/graphics/h;

    invoke-direct {v0}, Landroidx/core/graphics/h;-><init>()V

    sput-object v0, Landroidx/core/graphics/c;->a:Landroidx/core/graphics/h;

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;I)Landroid/graphics/Typeface;
    .locals 6

    .prologue
    .line 143
    sget-object v0, Landroidx/core/graphics/c;->a:Landroidx/core/graphics/h;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroidx/core/graphics/h;->a(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    .line 145
    if-eqz v0, :cond_0

    .line 146
    invoke-static {p1, p2, p4}, Landroidx/core/graphics/c;->b(Landroid/content/res/Resources;II)Ljava/lang/String;

    move-result-object v1

    .line 147
    sget-object v2, Landroidx/core/graphics/c;->b:Landroidx/b/e;

    invoke-virtual {v2, v1, v0}, Landroidx/b/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    :cond_0
    return-object v0
.end method

.method public static a(Landroid/content/Context;Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;
    .locals 2

    .prologue
    .line 190
    if-nez p0, :cond_0

    .line 191
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Context cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 195
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_1

    .line 196
    invoke-static {p0, p1, p2}, Landroidx/core/graphics/c;->b(Landroid/content/Context;Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    .line 197
    if-eqz v0, :cond_1

    .line 202
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Landroid/os/CancellationSignal;[Landroidx/core/e/b$b;I)Landroid/graphics/Typeface;
    .locals 1

    .prologue
    .line 160
    sget-object v0, Landroidx/core/graphics/c;->a:Landroidx/core/graphics/h;

    invoke-virtual {v0, p0, p1, p2, p3}, Landroidx/core/graphics/h;->a(Landroid/content/Context;Landroid/os/CancellationSignal;[Landroidx/core/e/b$b;I)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Landroidx/core/a/a/c$a;Landroid/content/res/Resources;IILandroidx/core/a/a/f$a;Landroid/os/Handler;Z)Landroid/graphics/Typeface;
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 105
    instance-of v1, p1, Landroidx/core/a/a/c$d;

    if-eqz v1, :cond_6

    .line 106
    check-cast p1, Landroidx/core/a/a/c$d;

    .line 107
    if-eqz p7, :cond_4

    .line 108
    invoke-virtual {p1}, Landroidx/core/a/a/c$d;->b()I

    move-result v1

    if-nez v1, :cond_3

    .line 111
    :cond_0
    :goto_0
    if-eqz p7, :cond_5

    invoke-virtual {p1}, Landroidx/core/a/a/c$d;->c()I

    move-result v5

    .line 113
    :goto_1
    invoke-virtual {p1}, Landroidx/core/a/a/c$d;->a()Landroidx/core/e/a;

    move-result-object v1

    move-object v0, p0

    move-object v2, p5

    move-object v3, p6

    move v6, p4

    invoke-static/range {v0 .. v6}, Landroidx/core/e/b;->a(Landroid/content/Context;Landroidx/core/e/a;Landroidx/core/a/a/f$a;Landroid/os/Handler;ZII)Landroid/graphics/Typeface;

    move-result-object v0

    .line 128
    :cond_1
    :goto_2
    if-eqz v0, :cond_2

    .line 129
    sget-object v1, Landroidx/core/graphics/c;->b:Landroidx/b/e;

    invoke-static {p2, p3, p4}, Landroidx/core/graphics/c;->b(Landroid/content/res/Resources;II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroidx/b/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    :cond_2
    return-object v0

    :cond_3
    move v4, v0

    .line 108
    goto :goto_0

    :cond_4
    if-eqz p5, :cond_0

    move v4, v0

    goto :goto_0

    .line 111
    :cond_5
    const/4 v5, -0x1

    goto :goto_1

    .line 116
    :cond_6
    sget-object v0, Landroidx/core/graphics/c;->a:Landroidx/core/graphics/h;

    check-cast p1, Landroidx/core/a/a/c$b;

    invoke-virtual {v0, p0, p1, p2, p4}, Landroidx/core/graphics/h;->a(Landroid/content/Context;Landroidx/core/a/a/c$b;Landroid/content/res/Resources;I)Landroid/graphics/Typeface;

    move-result-object v0

    .line 118
    if-eqz p5, :cond_1

    .line 119
    if-eqz v0, :cond_7

    .line 120
    invoke-virtual {p5, v0, p6}, Landroidx/core/a/a/f$a;->a(Landroid/graphics/Typeface;Landroid/os/Handler;)V

    goto :goto_2

    .line 122
    :cond_7
    const/4 v1, -0x3

    invoke-virtual {p5, v1, p6}, Landroidx/core/a/a/f$a;->a(ILandroid/os/Handler;)V

    goto :goto_2
.end method

.method public static a(Landroid/content/res/Resources;II)Landroid/graphics/Typeface;
    .locals 2

    .prologue
    .line 76
    sget-object v0, Landroidx/core/graphics/c;->b:Landroidx/b/e;

    invoke-static {p0, p1, p2}, Landroidx/core/graphics/c;->b(Landroid/content/res/Resources;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/b/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    return-object v0
.end method

.method private static b(Landroid/content/Context;Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;
    .locals 3

    .prologue
    .line 169
    sget-object v0, Landroidx/core/graphics/c;->a:Landroidx/core/graphics/h;

    invoke-virtual {v0, p1}, Landroidx/core/graphics/h;->a(Landroid/graphics/Typeface;)Landroidx/core/a/a/c$b;

    move-result-object v0

    .line 170
    if-nez v0, :cond_0

    .line 171
    const/4 v0, 0x0

    .line 174
    :goto_0
    return-object v0

    :cond_0
    sget-object v1, Landroidx/core/graphics/c;->a:Landroidx/core/graphics/h;

    .line 175
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 174
    invoke-virtual {v1, p0, v0, v2, p2}, Landroidx/core/graphics/h;->a(Landroid/content/Context;Landroidx/core/a/a/c$b;Landroid/content/res/Resources;I)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_0
.end method

.method private static b(Landroid/content/res/Resources;II)Ljava/lang/String;
    .locals 2

    .prologue
    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
