.class public Lkotlin/e/b/n;
.super Ljava/lang/Object;
.source "Reflection.java"


# static fields
.field private static final a:Lkotlin/e/b/o;

.field private static final b:[Lkotlin/g/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "kotlin.reflect.jvm.internal.ReflectionFactoryImpl"

    .line 26
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 27
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/e/b/o;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :catch_0
    if-eqz v0, :cond_0

    goto :goto_0

    .line 34
    :cond_0
    new-instance v0, Lkotlin/e/b/o;

    invoke-direct {v0}, Lkotlin/e/b/o;-><init>()V

    :goto_0
    sput-object v0, Lkotlin/e/b/n;->a:Lkotlin/e/b/o;

    const/4 v0, 0x0

    new-array v0, v0, [Lkotlin/g/b;

    .line 39
    sput-object v0, Lkotlin/e/b/n;->b:[Lkotlin/g/b;

    return-void
.end method

.method public static a(Lkotlin/e/b/f;)Ljava/lang/String;
    .locals 1

    .line 78
    sget-object v0, Lkotlin/e/b/n;->a:Lkotlin/e/b/o;

    invoke-virtual {v0, p0}, Lkotlin/e/b/o;->a(Lkotlin/e/b/f;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lkotlin/e/b/i;)Ljava/lang/String;
    .locals 1

    .line 73
    sget-object v0, Lkotlin/e/b/n;->a:Lkotlin/e/b/o;

    invoke-virtual {v0, p0}, Lkotlin/e/b/o;->a(Lkotlin/e/b/i;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/Class;)Lkotlin/g/b;
    .locals 1

    .line 54
    sget-object v0, Lkotlin/e/b/n;->a:Lkotlin/e/b/o;

    invoke-virtual {v0, p0}, Lkotlin/e/b/o;->a(Ljava/lang/Class;)Lkotlin/g/b;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lkotlin/e/b/k;)Lkotlin/g/f;
    .locals 1

    .line 98
    sget-object v0, Lkotlin/e/b/n;->a:Lkotlin/e/b/o;

    invoke-virtual {v0, p0}, Lkotlin/e/b/o;->a(Lkotlin/e/b/k;)Lkotlin/g/f;

    move-result-object p0

    return-object p0
.end method
