.class public final Lorg/xutils/http/loader/LoaderFactory;
.super Ljava/lang/Object;
.source "LoaderFactory.java"


# static fields
.field private static final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/reflect/Type;",
            "Lorg/xutils/http/loader/Loader;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/xutils/http/loader/LoaderFactory;->a:Ljava/util/HashMap;

    .line 2
    const-class v1, Lorg/json/JSONObject;

    new-instance v2, Lorg/xutils/http/loader/f;

    invoke-direct {v2}, Lorg/xutils/http/loader/f;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    const-class v1, Lorg/json/JSONArray;

    new-instance v2, Lorg/xutils/http/loader/e;

    invoke-direct {v2}, Lorg/xutils/http/loader/e;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    const-class v1, Ljava/lang/String;

    new-instance v2, Lorg/xutils/http/loader/h;

    invoke-direct {v2}, Lorg/xutils/http/loader/h;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    const-class v1, Ljava/io/File;

    new-instance v2, Lorg/xutils/http/loader/FileLoader;

    invoke-direct {v2}, Lorg/xutils/http/loader/FileLoader;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    const-class v1, [B

    new-instance v2, Lorg/xutils/http/loader/b;

    invoke-direct {v2}, Lorg/xutils/http/loader/b;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    const-class v1, Ljava/io/InputStream;

    new-instance v2, Lorg/xutils/http/loader/c;

    invoke-direct {v2}, Lorg/xutils/http/loader/c;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    new-instance v1, Lorg/xutils/http/loader/a;

    invoke-direct {v1}, Lorg/xutils/http/loader/a;-><init>()V

    .line 9
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    const-class v2, Ljava/lang/Boolean;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    new-instance v1, Lorg/xutils/http/loader/d;

    invoke-direct {v1}, Lorg/xutils/http/loader/d;-><init>()V

    .line 12
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    const-class v2, Ljava/lang/Integer;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLoader(Ljava/lang/reflect/Type;)Lorg/xutils/http/loader/Loader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lorg/xutils/http/loader/Loader<",
            "*>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/xutils/http/loader/LoaderFactory;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xutils/http/loader/Loader;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lorg/xutils/http/loader/g;

    invoke-direct {v0, p0}, Lorg/xutils/http/loader/g;-><init>(Ljava/lang/reflect/Type;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0}, Lorg/xutils/http/loader/Loader;->newInstance()Lorg/xutils/http/loader/Loader;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static registerLoader(Ljava/lang/reflect/Type;Lorg/xutils/http/loader/Loader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            "Lorg/xutils/http/loader/Loader<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/xutils/http/loader/LoaderFactory;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
