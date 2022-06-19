.class final Lretrofit2/d;
.super Lretrofit2/b$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lretrofit2/d$b;,
        Lretrofit2/d$c;,
        Lretrofit2/d$a;
    }
.end annotation


# static fields
.field static final a:Lretrofit2/b$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    new-instance v0, Lretrofit2/d;

    invoke-direct {v0}, Lretrofit2/d;-><init>()V

    sput-object v0, Lretrofit2/d;->a:Lretrofit2/b$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lretrofit2/b$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            ")",
            "Lretrofit2/b<",
            "**>;"
        }
    .end annotation

    .line 1084
    invoke-static {p1}, Lretrofit2/s;->a(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p2

    .line 31
    const-class v0, Ljava/util/concurrent/CompletableFuture;

    if-eq p2, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 34
    :cond_0
    instance-of p2, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz p2, :cond_3

    .line 38
    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    const/4 p2, 0x0

    .line 2076
    invoke-static {p2, p1}, Lretrofit2/s;->a(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p1

    .line 2084
    invoke-static {p1}, Lretrofit2/s;->a(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    .line 40
    const-class v1, Lretrofit2/Response;

    if-eq v0, v1, :cond_1

    .line 42
    new-instance p2, Lretrofit2/d$a;

    invoke-direct {p2, p1}, Lretrofit2/d$a;-><init>(Ljava/lang/reflect/Type;)V

    return-object p2

    .line 46
    :cond_1
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_2

    .line 50
    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    .line 3076
    invoke-static {p2, p1}, Lretrofit2/s;->a(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p1

    .line 51
    new-instance p2, Lretrofit2/d$c;

    invoke-direct {p2, p1}, Lretrofit2/d$c;-><init>(Ljava/lang/reflect/Type;)V

    return-object p2

    .line 47
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Response must be parameterized as Response<Foo> or Response<? extends Foo>"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 35
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "CompletableFuture return type must be parameterized as CompletableFuture<Foo> or CompletableFuture<? extends Foo>"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
