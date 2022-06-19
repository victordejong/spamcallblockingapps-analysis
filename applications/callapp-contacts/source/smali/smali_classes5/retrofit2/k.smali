.class final Lretrofit2/k;
.super Lretrofit2/e$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lretrofit2/k$a;
    }
.end annotation


# static fields
.field static final a:Lretrofit2/e$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    new-instance v0, Lretrofit2/k;

    invoke-direct {v0}, Lretrofit2/k;-><init>()V

    sput-object v0, Lretrofit2/k;->a:Lretrofit2/e$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lretrofit2/e$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Lretrofit2/Retrofit;)Lretrofit2/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Lretrofit2/Retrofit;",
            ")",
            "Lretrofit2/e<",
            "Lokhttp3/ResponseBody;",
            "*>;"
        }
    .end annotation

    .line 1093
    invoke-static {p1}, Lretrofit2/s;->a(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    .line 33
    const-class v1, Ljava/util/Optional;

    if-eq v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 37
    :cond_0
    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    const/4 v0, 0x0

    .line 2085
    invoke-static {v0, p1}, Lretrofit2/s;->a(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p1

    .line 2335
    invoke-virtual {p3, p1, p2}, Lretrofit2/Retrofit;->b(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/e;

    move-result-object p1

    .line 40
    new-instance p2, Lretrofit2/k$a;

    invoke-direct {p2, p1}, Lretrofit2/k$a;-><init>(Lretrofit2/e;)V

    return-object p2
.end method
