.class Landroidx/appcompat/app/h;
.super Ljava/lang/Object;
.source "ResourcesFlusher.java"


# static fields
.field private static a:Ljava/lang/reflect/Field;

.field private static b:Z

.field private static c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static d:Z

.field private static e:Ljava/lang/reflect/Field;

.field private static f:Z

.field private static g:Ljava/lang/reflect/Field;

.field private static h:Z


# direct methods
.method static a(Landroid/content/res/Resources;)V
    .locals 2

    .prologue
    .line 46
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_1

    .line 56
    :cond_0
    :goto_0
    return-void

    .line 49
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_2

    .line 50
    invoke-static {p0}, Landroidx/appcompat/app/h;->d(Landroid/content/res/Resources;)V

    goto :goto_0

    .line 51
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_3

    .line 52
    invoke-static {p0}, Landroidx/appcompat/app/h;->c(Landroid/content/res/Resources;)V

    goto :goto_0

    .line 53
    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 54
    invoke-static {p0}, Landroidx/appcompat/app/h;->b(Landroid/content/res/Resources;)V

    goto :goto_0
.end method

.method private static a(Ljava/lang/Object;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 166
    sget-boolean v0, Landroidx/appcompat/app/h;->d:Z

    if-nez v0, :cond_0

    .line 168
    :try_start_0
    const-string/jumbo v0, "android.content.res.ThemedResourceCache"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/app/h;->c:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    :goto_0
    sput-boolean v3, Landroidx/appcompat/app/h;->d:Z

    .line 175
    :cond_0
    sget-object v0, Landroidx/appcompat/app/h;->c:Ljava/lang/Class;

    if-nez v0, :cond_2

    .line 207
    :cond_1
    :goto_1
    return-void

    .line 169
    :catch_0
    move-exception v0

    .line 170
    const-string/jumbo v1, "ResourcesFlusher"

    const-string/jumbo v2, "Could not find ThemedResourceCache class"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 180
    :cond_2
    sget-boolean v0, Landroidx/appcompat/app/h;->f:Z

    if-nez v0, :cond_3

    .line 182
    :try_start_1
    sget-object v0, Landroidx/appcompat/app/h;->c:Ljava/lang/Class;

    const-string/jumbo v1, "mUnthemedEntries"

    .line 183
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/app/h;->e:Ljava/lang/reflect/Field;

    .line 184
    sget-object v0, Landroidx/appcompat/app/h;->e:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_1

    .line 188
    :goto_2
    sput-boolean v3, Landroidx/appcompat/app/h;->f:Z

    .line 191
    :cond_3
    sget-object v0, Landroidx/appcompat/app/h;->e:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_1

    .line 196
    const/4 v1, 0x0

    .line 198
    :try_start_2
    sget-object v0, Landroidx/appcompat/app/h;->e:Ljava/lang/reflect/Field;

    .line 199
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/LongSparseArray;
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2

    .line 204
    :goto_3
    if-eqz v0, :cond_1

    .line 205
    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    goto :goto_1

    .line 185
    :catch_1
    move-exception v0

    .line 186
    const-string/jumbo v1, "ResourcesFlusher"

    const-string/jumbo v2, "Could not retrieve ThemedResourceCache#mUnthemedEntries field"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 200
    :catch_2
    move-exception v0

    .line 201
    const-string/jumbo v2, "ResourcesFlusher"

    const-string/jumbo v3, "Could not retrieve value from ThemedResourceCache#mUnthemedEntries"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_3
.end method

.method private static b(Landroid/content/res/Resources;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 60
    sget-boolean v0, Landroidx/appcompat/app/h;->b:Z

    if-nez v0, :cond_0

    .line 62
    :try_start_0
    const-class v0, Landroid/content/res/Resources;

    const-string/jumbo v1, "mDrawableCache"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/app/h;->a:Ljava/lang/reflect/Field;

    .line 63
    sget-object v0, Landroidx/appcompat/app/h;->a:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :goto_0
    sput-boolean v3, Landroidx/appcompat/app/h;->b:Z

    .line 69
    :cond_0
    sget-object v0, Landroidx/appcompat/app/h;->a:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_1

    .line 70
    const/4 v1, 0x0

    .line 72
    :try_start_1
    sget-object v0, Landroidx/appcompat/app/h;->a:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    .line 76
    :goto_1
    if-eqz v0, :cond_1

    .line 77
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 80
    :cond_1
    return-void

    .line 64
    :catch_0
    move-exception v0

    .line 65
    const-string/jumbo v1, "ResourcesFlusher"

    const-string/jumbo v2, "Could not retrieve Resources#mDrawableCache field"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 73
    :catch_1
    move-exception v0

    .line 74
    const-string/jumbo v2, "ResourcesFlusher"

    const-string/jumbo v3, "Could not retrieve value from Resources#mDrawableCache"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_1
.end method

.method private static c(Landroid/content/res/Resources;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 84
    sget-boolean v0, Landroidx/appcompat/app/h;->b:Z

    if-nez v0, :cond_0

    .line 86
    :try_start_0
    const-class v0, Landroid/content/res/Resources;

    const-string/jumbo v1, "mDrawableCache"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/app/h;->a:Ljava/lang/reflect/Field;

    .line 87
    sget-object v0, Landroidx/appcompat/app/h;->a:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :goto_0
    sput-boolean v3, Landroidx/appcompat/app/h;->b:Z

    .line 94
    :cond_0
    const/4 v1, 0x0

    .line 95
    sget-object v0, Landroidx/appcompat/app/h;->a:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_1

    .line 97
    :try_start_1
    sget-object v0, Landroidx/appcompat/app/h;->a:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 103
    :goto_1
    if-nez v0, :cond_2

    .line 109
    :goto_2
    return-void

    .line 88
    :catch_0
    move-exception v0

    .line 89
    const-string/jumbo v1, "ResourcesFlusher"

    const-string/jumbo v2, "Could not retrieve Resources#mDrawableCache field"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 98
    :catch_1
    move-exception v0

    .line 99
    const-string/jumbo v2, "ResourcesFlusher"

    const-string/jumbo v3, "Could not retrieve value from Resources#mDrawableCache"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    move-object v0, v1

    goto :goto_1

    .line 108
    :cond_2
    invoke-static {v0}, Landroidx/appcompat/app/h;->a(Ljava/lang/Object;)V

    goto :goto_2
.end method

.method private static d(Landroid/content/res/Resources;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x1

    .line 113
    sget-boolean v0, Landroidx/appcompat/app/h;->h:Z

    if-nez v0, :cond_0

    .line 115
    :try_start_0
    const-class v0, Landroid/content/res/Resources;

    const-string/jumbo v2, "mResourcesImpl"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/app/h;->g:Ljava/lang/reflect/Field;

    .line 116
    sget-object v0, Landroidx/appcompat/app/h;->g:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :goto_0
    sput-boolean v5, Landroidx/appcompat/app/h;->h:Z

    .line 123
    :cond_0
    sget-object v0, Landroidx/appcompat/app/h;->g:Ljava/lang/reflect/Field;

    if-nez v0, :cond_2

    .line 162
    :cond_1
    :goto_1
    return-void

    .line 117
    :catch_0
    move-exception v0

    .line 118
    const-string/jumbo v2, "ResourcesFlusher"

    const-string/jumbo v3, "Could not retrieve Resources#mResourcesImpl field"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 130
    :cond_2
    :try_start_1
    sget-object v0, Landroidx/appcompat/app/h;->g:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    move-object v2, v0

    .line 135
    :goto_2
    if-eqz v2, :cond_1

    .line 140
    sget-boolean v0, Landroidx/appcompat/app/h;->b:Z

    if-nez v0, :cond_3

    .line 142
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v3, "mDrawableCache"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/app/h;->a:Ljava/lang/reflect/Field;

    .line 143
    sget-object v0, Landroidx/appcompat/app/h;->a:Ljava/lang/reflect/Field;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_2

    .line 147
    :goto_3
    sput-boolean v5, Landroidx/appcompat/app/h;->b:Z

    .line 151
    :cond_3
    sget-object v0, Landroidx/appcompat/app/h;->a:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_4

    .line 153
    :try_start_3
    sget-object v0, Landroidx/appcompat/app/h;->a:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v0

    .line 159
    :goto_4
    if-eqz v0, :cond_1

    .line 160
    invoke-static {v0}, Landroidx/appcompat/app/h;->a(Ljava/lang/Object;)V

    goto :goto_1

    .line 131
    :catch_1
    move-exception v0

    .line 132
    const-string/jumbo v2, "ResourcesFlusher"

    const-string/jumbo v3, "Could not retrieve value from Resources#mResourcesImpl"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v1

    goto :goto_2

    .line 144
    :catch_2
    move-exception v0

    .line 145
    const-string/jumbo v3, "ResourcesFlusher"

    const-string/jumbo v4, "Could not retrieve ResourcesImpl#mDrawableCache field"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 154
    :catch_3
    move-exception v0

    .line 155
    const-string/jumbo v2, "ResourcesFlusher"

    const-string/jumbo v3, "Could not retrieve value from ResourcesImpl#mDrawableCache"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    move-object v0, v1

    goto :goto_4
.end method
