.class Landroidx/core/graphics/e;
.super Landroidx/core/graphics/h;
.source "TypefaceCompatApi24Impl.java"


# static fields
.field private static final a:Ljava/lang/Class;

.field private static final b:Ljava/lang/reflect/Constructor;

.field private static final c:Ljava/lang/reflect/Method;

.field private static final d:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 69
    :try_start_0
    const-string/jumbo v0, "android.graphics.FontFamily"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 70
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Class;

    invoke-virtual {v4, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 71
    const-string/jumbo v0, "addFontWeightStyle"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/nio/ByteBuffer;

    aput-object v6, v2, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v2, v5

    const/4 v5, 0x2

    const-class v6, Ljava/util/List;

    aput-object v6, v2, v5

    const/4 v5, 0x3

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v2, v5

    const/4 v5, 0x4

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v2, v5

    invoke-virtual {v4, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 73
    const/4 v0, 0x1

    invoke-static {v4, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    .line 74
    const-class v5, Landroid/graphics/Typeface;

    const-string/jumbo v6, "createFromFamiliesWithDefault"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    .line 76
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    aput-object v0, v7, v8

    .line 75
    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 84
    :goto_0
    sput-object v3, Landroidx/core/graphics/e;->b:Ljava/lang/reflect/Constructor;

    .line 85
    sput-object v4, Landroidx/core/graphics/e;->a:Ljava/lang/Class;

    .line 86
    sput-object v2, Landroidx/core/graphics/e;->c:Ljava/lang/reflect/Method;

    .line 87
    sput-object v0, Landroidx/core/graphics/e;->d:Ljava/lang/reflect/Method;

    .line 88
    return-void

    .line 77
    :catch_0
    move-exception v0

    .line 78
    :goto_1
    const-string/jumbo v2, "TypefaceCompatApi24Impl"

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    .line 82
    goto :goto_0

    .line 77
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Landroidx/core/graphics/h;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/Object;)Landroid/graphics/Typeface;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 122
    :try_start_0
    sget-object v0, Landroidx/core/graphics/e;->a:Ljava/lang/Class;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    .line 123
    const/4 v2, 0x0

    invoke-static {v0, v2, p0}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 124
    sget-object v2, Landroidx/core/graphics/e;->d:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    .line 127
    :goto_0
    return-object v0

    .line 126
    :catch_0
    move-exception v0

    :goto_1
    move-object v0, v1

    .line 127
    goto :goto_0

    .line 126
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public static a()Z
    .locals 2

    .prologue
    .line 94
    sget-object v0, Landroidx/core/graphics/e;->c:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 95
    const-string/jumbo v0, "TypefaceCompatApi24Impl"

    const-string/jumbo v1, "Unable to collect necessary private methods.Fallback to legacy implementation."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_0
    sget-object v0, Landroidx/core/graphics/e;->c:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Ljava/lang/Object;Ljava/nio/ByteBuffer;IIZ)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 112
    :try_start_0
    sget-object v0, Landroidx/core/graphics/e;->c:Ljava/lang/reflect/Method;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    .line 113
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    .line 112
    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 114
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 116
    :goto_0
    return v0

    .line 115
    :catch_0
    move-exception v0

    :goto_1
    move v0, v1

    .line 116
    goto :goto_0

    .line 115
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private static b()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 103
    :try_start_0
    sget-object v0, Landroidx/core/graphics/e;->b:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    .line 105
    :goto_0
    return-object v0

    .line 104
    :catch_0
    move-exception v0

    .line 105
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 104
    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/os/CancellationSignal;[Landroidx/core/e/b$b;I)Landroid/graphics/Typeface;
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 135
    invoke-static {}, Landroidx/core/graphics/e;->b()Ljava/lang/Object;

    move-result-object v3

    .line 136
    if-nez v3, :cond_0

    move-object v0, v1

    .line 160
    :goto_0
    return-object v0

    .line 139
    :cond_0
    new-instance v4, Landroidx/b/g;

    invoke-direct {v4}, Landroidx/b/g;-><init>()V

    .line 141
    array-length v5, p3

    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, v5, :cond_4

    aget-object v6, p3, v2

    .line 142
    invoke-virtual {v6}, Landroidx/core/e/b$b;->a()Landroid/net/Uri;

    move-result-object v7

    .line 143
    invoke-virtual {v4, v7}, Landroidx/b/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 144
    if-nez v0, :cond_1

    .line 145
    invoke-static {p1, p2, v7}, Landroidx/core/graphics/i;->a(Landroid/content/Context;Landroid/os/CancellationSignal;Landroid/net/Uri;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 146
    invoke-virtual {v4, v7, v0}, Landroidx/b/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    :cond_1
    if-nez v0, :cond_2

    move-object v0, v1

    .line 149
    goto :goto_0

    .line 151
    :cond_2
    invoke-virtual {v6}, Landroidx/core/e/b$b;->b()I

    move-result v7

    invoke-virtual {v6}, Landroidx/core/e/b$b;->c()I

    move-result v8

    .line 152
    invoke-virtual {v6}, Landroidx/core/e/b$b;->d()Z

    move-result v6

    .line 151
    invoke-static {v3, v0, v7, v8, v6}, Landroidx/core/graphics/e;->a(Ljava/lang/Object;Ljava/nio/ByteBuffer;IIZ)Z

    move-result v0

    if-nez v0, :cond_3

    move-object v0, v1

    .line 153
    goto :goto_0

    .line 141
    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 156
    :cond_4
    invoke-static {v3}, Landroidx/core/graphics/e;->a(Ljava/lang/Object;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 157
    if-nez v0, :cond_5

    move-object v0, v1

    .line 158
    goto :goto_0

    .line 160
    :cond_5
    invoke-static {v0, p4}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Landroidx/core/a/a/c$b;Landroid/content/res/Resources;I)Landroid/graphics/Typeface;
    .locals 9

    .prologue
    const/4 v0, 0x0

    .line 167
    invoke-static {}, Landroidx/core/graphics/e;->b()Ljava/lang/Object;

    move-result-object v2

    .line 168
    if-nez v2, :cond_1

    .line 181
    :cond_0
    :goto_0
    return-object v0

    .line 171
    :cond_1
    invoke-virtual {p2}, Landroidx/core/a/a/c$b;->a()[Landroidx/core/a/a/c$c;

    move-result-object v3

    array-length v4, v3

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v4, :cond_2

    aget-object v5, v3, v1

    .line 173
    invoke-virtual {v5}, Landroidx/core/a/a/c$c;->f()I

    move-result v6

    invoke-static {p1, p3, v6}, Landroidx/core/graphics/i;->a(Landroid/content/Context;Landroid/content/res/Resources;I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 174
    if-eqz v6, :cond_0

    .line 177
    invoke-virtual {v5}, Landroidx/core/a/a/c$c;->e()I

    move-result v7

    invoke-virtual {v5}, Landroidx/core/a/a/c$c;->b()I

    move-result v8

    invoke-virtual {v5}, Landroidx/core/a/a/c$c;->c()Z

    move-result v5

    invoke-static {v2, v6, v7, v8, v5}, Landroidx/core/graphics/e;->a(Ljava/lang/Object;Ljava/nio/ByteBuffer;IIZ)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 171
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 181
    :cond_2
    invoke-static {v2}, Landroidx/core/graphics/e;->a(Ljava/lang/Object;)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_0
.end method
