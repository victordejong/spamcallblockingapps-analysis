.class public final Lkotlin/jvm/internal/ac;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lkotlin/jvm/internal/ad;

.field private static final b:[Lkotlin/reflect/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "kotlin.reflect.jvm.internal.ae"

    .line 26
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 27
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/jvm/internal/ad;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    nop

    :goto_0
    if-eqz v0, :cond_0

    goto :goto_1

    .line 34
    :cond_0
    new-instance v0, Lkotlin/jvm/internal/ad;

    invoke-direct {v0}, Lkotlin/jvm/internal/ad;-><init>()V

    :goto_1
    sput-object v0, Lkotlin/jvm/internal/ac;->a:Lkotlin/jvm/internal/ad;

    const/4 v0, 0x0

    new-array v0, v0, [Lkotlin/reflect/c;

    .line 39
    sput-object v0, Lkotlin/jvm/internal/ac;->b:[Lkotlin/reflect/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lkotlin/jvm/internal/l;)Ljava/lang/String;
    .locals 1

    .line 83
    sget-object v0, Lkotlin/jvm/internal/ac;->a:Lkotlin/jvm/internal/ad;

    invoke-virtual {v0, p0}, Lkotlin/jvm/internal/ad;->a(Lkotlin/jvm/internal/l;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lkotlin/jvm/internal/r;)Ljava/lang/String;
    .locals 1

    .line 78
    sget-object v0, Lkotlin/jvm/internal/ac;->a:Lkotlin/jvm/internal/ad;

    invoke-virtual {v0, p0}, Lkotlin/jvm/internal/ad;->a(Lkotlin/jvm/internal/r;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/Class;)Lkotlin/reflect/KDeclarationContainer;
    .locals 2

    .line 51
    sget-object v0, Lkotlin/jvm/internal/ac;->a:Lkotlin/jvm/internal/ad;

    const-string v1, ""

    invoke-virtual {v0, p0, v1}, Lkotlin/jvm/internal/ad;->a(Ljava/lang/Class;Ljava/lang/String;)Lkotlin/reflect/KDeclarationContainer;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/Class;Ljava/lang/String;)Lkotlin/reflect/KDeclarationContainer;
    .locals 1

    .line 55
    sget-object v0, Lkotlin/jvm/internal/ac;->a:Lkotlin/jvm/internal/ad;

    invoke-virtual {v0, p0, p1}, Lkotlin/jvm/internal/ad;->a(Ljava/lang/Class;Ljava/lang/String;)Lkotlin/reflect/KDeclarationContainer;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lkotlin/jvm/internal/m;)Lkotlin/reflect/KFunction;
    .locals 1

    .line 89
    sget-object v0, Lkotlin/jvm/internal/ac;->a:Lkotlin/jvm/internal/ad;

    invoke-virtual {v0, p0}, Lkotlin/jvm/internal/ad;->a(Lkotlin/jvm/internal/m;)Lkotlin/reflect/KFunction;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lkotlin/jvm/internal/t;)Lkotlin/reflect/f;
    .locals 1

    .line 99
    sget-object v0, Lkotlin/jvm/internal/ac;->a:Lkotlin/jvm/internal/ad;

    invoke-virtual {v0, p0}, Lkotlin/jvm/internal/ad;->a(Lkotlin/jvm/internal/t;)Lkotlin/reflect/f;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lkotlin/jvm/internal/v;)Lkotlin/reflect/g;
    .locals 1

    .line 107
    sget-object v0, Lkotlin/jvm/internal/ac;->a:Lkotlin/jvm/internal/ad;

    invoke-virtual {v0, p0}, Lkotlin/jvm/internal/ad;->a(Lkotlin/jvm/internal/v;)Lkotlin/reflect/g;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lkotlin/jvm/internal/z;)Lkotlin/reflect/m;
    .locals 1

    .line 103
    sget-object v0, Lkotlin/jvm/internal/ac;->a:Lkotlin/jvm/internal/ad;

    invoke-virtual {v0, p0}, Lkotlin/jvm/internal/ad;->a(Lkotlin/jvm/internal/z;)Lkotlin/reflect/m;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/Class;)Lkotlin/reflect/c;
    .locals 1

    .line 59
    sget-object v0, Lkotlin/jvm/internal/ac;->a:Lkotlin/jvm/internal/ad;

    invoke-virtual {v0, p0}, Lkotlin/jvm/internal/ad;->a(Ljava/lang/Class;)Lkotlin/reflect/c;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/lang/Class;)Lkotlin/reflect/KType;
    .locals 2

    .line 152
    sget-object v0, Lkotlin/jvm/internal/ac;->a:Lkotlin/jvm/internal/ad;

    .line 1059
    invoke-virtual {v0, p0}, Lkotlin/jvm/internal/ad;->a(Ljava/lang/Class;)Lkotlin/reflect/c;

    move-result-object p0

    .line 152
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lkotlin/jvm/internal/ad;->a(Lkotlin/reflect/d;Ljava/util/List;)Lkotlin/reflect/KType;

    move-result-object p0

    return-object p0
.end method
