.class public Lnc0;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnc0$c;,
        Lnc0$a;,
        Lnc0$b;
    }
.end annotation


# static fields
.field public static final a:Lnc0$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Ld80;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Lnc0$c;

    invoke-direct {v0}, Lnc0$c;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Lnc0$a;

    invoke-direct {v0}, Lnc0$a;-><init>()V

    :goto_0
    sput-object v0, Lnc0;->a:Lnc0$b;

    return-void
.end method

.method public static a(Landroid/content/res/TypedArray;)[I
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "mData"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    :goto_0
    move-object v1, v0

    :goto_1
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->length()I

    move-result p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_2
    if-ge v3, p0, :cond_3

    mul-int/lit8 v4, v3, 0x6

    add-int/lit8 v5, v4, 0x0

    aget v6, v1, v5

    const/4 v7, 0x2

    if-eq v6, v7, :cond_0

    goto :goto_3

    :cond_0
    aput v2, v1, v5

    add-int/lit8 v4, v4, 0x1

    aget v4, v1, v4

    if-nez v4, :cond_1

    goto :goto_3

    :cond_1
    if-nez v0, :cond_2

    new-array v0, p0, [I

    :cond_2
    aput v4, v0, v3

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    return-object v0
.end method

.method public static b(Landroid/content/res/TypedArray;)I
    .locals 1

    sget-object v0, Lnc0;->a:Lnc0$b;

    invoke-interface {v0, p0}, Lnc0$b;->a(Landroid/content/res/TypedArray;)I

    move-result p0

    return p0
.end method
