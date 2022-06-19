.class Lcom/bytedance/sdk/openadsdk/g/a/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/g/a/v$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/g/a/g$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/bytedance/sdk/openadsdk/g/a/h;

.field private final b:Lcom/bytedance/sdk/openadsdk/g/a/t;

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/openadsdk/g/a/b;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/openadsdk/g/a/d$b;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/g/a/p;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/bytedance/sdk/openadsdk/g/a/d;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lcom/bytedance/sdk/openadsdk/g/a/m;

.field private final h:Z

.field private final i:Z

.field private final j:Lcom/bytedance/sdk/openadsdk/g/a/a;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/g/a/j;Lcom/bytedance/sdk/openadsdk/g/a/a;Lcom/bytedance/sdk/openadsdk/g/a/u;)V
    .locals 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/a/g;->c:Ljava/util/Map;

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/a/g;->d:Ljava/util/Map;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/a/g;->e:Ljava/util/List;

    .line 28
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/a/g;->f:Ljava/util/Set;

    .line 37
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/g/a/g;->j:Lcom/bytedance/sdk/openadsdk/g/a/a;

    .line 38
    iget-object p2, p1, Lcom/bytedance/sdk/openadsdk/g/a/j;->d:Lcom/bytedance/sdk/openadsdk/g/a/h;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/g/a/g;->a:Lcom/bytedance/sdk/openadsdk/g/a/h;

    .line 39
    new-instance p2, Lcom/bytedance/sdk/openadsdk/g/a/t;

    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/g/a/j;->l:Ljava/util/Set;

    iget-object v1, p1, Lcom/bytedance/sdk/openadsdk/g/a/j;->m:Ljava/util/Set;

    invoke-direct {p2, p3, v0, v1}, Lcom/bytedance/sdk/openadsdk/g/a/t;-><init>(Lcom/bytedance/sdk/openadsdk/g/a/u;Ljava/util/Set;Ljava/util/Set;)V

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/g/a/g;->b:Lcom/bytedance/sdk/openadsdk/g/a/t;

    .line 40
    invoke-virtual {p2, p0}, Lcom/bytedance/sdk/openadsdk/g/a/t;->a(Lcom/bytedance/sdk/openadsdk/g/a/v$a;)V

    .line 41
    iget-object p3, p1, Lcom/bytedance/sdk/openadsdk/g/a/j;->p:Lcom/bytedance/sdk/openadsdk/g/a/k$b;

    invoke-virtual {p2, p3}, Lcom/bytedance/sdk/openadsdk/g/a/t;->a(Lcom/bytedance/sdk/openadsdk/g/a/k$b;)V

    .line 42
    iget-object p2, p1, Lcom/bytedance/sdk/openadsdk/g/a/j;->i:Lcom/bytedance/sdk/openadsdk/g/a/m;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/g/a/g;->g:Lcom/bytedance/sdk/openadsdk/g/a/m;

    .line 43
    iget-boolean p2, p1, Lcom/bytedance/sdk/openadsdk/g/a/j;->h:Z

    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/g/a/g;->h:Z

    .line 44
    iget-boolean p1, p1, Lcom/bytedance/sdk/openadsdk/g/a/j;->o:Z

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/g/a/g;->i:Z

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/g/a/g;)Lcom/bytedance/sdk/openadsdk/g/a/a;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/g/a/g;->j:Lcom/bytedance/sdk/openadsdk/g/a/a;

    return-object p0
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/g/a/p;Lcom/bytedance/sdk/openadsdk/g/a/c;Lcom/bytedance/sdk/openadsdk/g/a/w;)Lcom/bytedance/sdk/openadsdk/g/a/g$a;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 177
    new-instance v0, Lcom/bytedance/sdk/openadsdk/g/a/s;

    iget-object v1, p1, Lcom/bytedance/sdk/openadsdk/g/a/p;->d:Ljava/lang/String;

    new-instance v2, Lcom/bytedance/sdk/openadsdk/g/a/g$2;

    invoke-direct {v2, p0, p1}, Lcom/bytedance/sdk/openadsdk/g/a/g$2;-><init>(Lcom/bytedance/sdk/openadsdk/g/a/g;Lcom/bytedance/sdk/openadsdk/g/a/p;)V

    invoke-direct {v0, v1, p3, v2}, Lcom/bytedance/sdk/openadsdk/g/a/s;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/g/a/w;Lcom/bytedance/sdk/openadsdk/g/a/s$a;)V

    invoke-virtual {p2, p1, v0}, Lcom/bytedance/sdk/openadsdk/g/a/c;->a(Lcom/bytedance/sdk/openadsdk/g/a/p;Lcom/bytedance/sdk/openadsdk/g/a/s;)V

    .line 185
    new-instance p1, Lcom/bytedance/sdk/openadsdk/g/a/g$a;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/g/a/x;->a()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    const/4 v0, 0x0

    invoke-direct {p1, p3, p2, v0}, Lcom/bytedance/sdk/openadsdk/g/a/g$a;-><init>(ZLjava/lang/String;Lcom/bytedance/sdk/openadsdk/g/a/g$1;)V

    return-object p1
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/g/a/p;Lcom/bytedance/sdk/openadsdk/g/a/d;Lcom/bytedance/sdk/openadsdk/g/a/f;)Lcom/bytedance/sdk/openadsdk/g/a/g$a;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 151
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/a/g;->f:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 152
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/g/a/p;->e:Ljava/lang/String;

    invoke-direct {p0, v0, p2}, Lcom/bytedance/sdk/openadsdk/g/a/g;->a(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/g/a/b;)Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/g/a/g$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/g/a/g$1;-><init>(Lcom/bytedance/sdk/openadsdk/g/a/g;Lcom/bytedance/sdk/openadsdk/g/a/p;Lcom/bytedance/sdk/openadsdk/g/a/d;)V

    invoke-virtual {p2, v0, p3, v1}, Lcom/bytedance/sdk/openadsdk/g/a/d;->a(Ljava/lang/Object;Lcom/bytedance/sdk/openadsdk/g/a/f;Lcom/bytedance/sdk/openadsdk/g/a/d$a;)V

    .line 171
    new-instance p1, Lcom/bytedance/sdk/openadsdk/g/a/g$a;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/g/a/x;->a()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    const/4 v0, 0x0

    invoke-direct {p1, p3, p2, v0}, Lcom/bytedance/sdk/openadsdk/g/a/g$a;-><init>(ZLjava/lang/String;Lcom/bytedance/sdk/openadsdk/g/a/g$1;)V

    return-object p1
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/g/a/p;Lcom/bytedance/sdk/openadsdk/g/a/e;Lcom/bytedance/sdk/openadsdk/g/a/f;)Lcom/bytedance/sdk/openadsdk/g/a/g$a;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 143
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/g/a/p;->e:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/g/a/g;->a(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/g/a/b;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1, p3}, Lcom/bytedance/sdk/openadsdk/g/a/e;->a(Ljava/lang/Object;Lcom/bytedance/sdk/openadsdk/g/a/f;)Ljava/lang/Object;

    move-result-object p1

    .line 144
    new-instance p2, Lcom/bytedance/sdk/openadsdk/g/a/g$a;

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/g/a/g;->a:Lcom/bytedance/sdk/openadsdk/g/a/h;

    invoke-virtual {p3, p1}, Lcom/bytedance/sdk/openadsdk/g/a/h;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/g/a/x;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x1

    const/4 v0, 0x0

    invoke-direct {p2, p3, p1, v0}, Lcom/bytedance/sdk/openadsdk/g/a/g$a;-><init>(ZLjava/lang/String;Lcom/bytedance/sdk/openadsdk/g/a/g$1;)V

    return-object p2
.end method

.method private a(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/g/a/b;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 199
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/a/g;->a:Lcom/bytedance/sdk/openadsdk/g/a/h;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/g/a/g;->a(Ljava/lang/Object;)[Ljava/lang/reflect/Type;

    move-result-object p2

    const/4 v1, 0x0

    aget-object p2, p2, v1

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/g/a/h;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private static a(Ljava/lang/Object;)[Ljava/lang/reflect/Type;
    .locals 1

    .line 211
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 215
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p0

    return-object p0

    .line 213
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Method is not parameterized?!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/g/a/g;)Lcom/bytedance/sdk/openadsdk/g/a/h;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/g/a/g;->a:Lcom/bytedance/sdk/openadsdk/g/a/h;

    return-object p0
.end method

.method private b(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/g/a/b;)Lcom/bytedance/sdk/openadsdk/g/a/w;
    .locals 2

    .line 203
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/g/a/g;->i:Z

    if-eqz v0, :cond_0

    .line 204
    sget-object p1, Lcom/bytedance/sdk/openadsdk/g/a/w;->c:Lcom/bytedance/sdk/openadsdk/g/a/w;

    return-object p1

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/a/g;->b:Lcom/bytedance/sdk/openadsdk/g/a/t;

    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/g/a/g;->h:Z

    invoke-virtual {v0, v1, p1, p2}, Lcom/bytedance/sdk/openadsdk/g/a/t;->a(ZLjava/lang/String;Lcom/bytedance/sdk/openadsdk/g/a/b;)Lcom/bytedance/sdk/openadsdk/g/a/w;

    move-result-object p1

    return-object p1
.end method

.method static synthetic c(Lcom/bytedance/sdk/openadsdk/g/a/g;)Ljava/util/Set;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/g/a/g;->f:Ljava/util/Set;

    return-object p0
.end method


# virtual methods
.method a(Lcom/bytedance/sdk/openadsdk/g/a/p;Lcom/bytedance/sdk/openadsdk/g/a/f;)Lcom/bytedance/sdk/openadsdk/g/a/g$a;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/a/g;->c:Ljava/util/Map;

    iget-object v1, p1, Lcom/bytedance/sdk/openadsdk/g/a/p;->d:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/g/a/b;

    const/4 v1, -0x1

    const-string v2, "Permission denied, call: "

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    .line 53
    :try_start_0
    iget-object v4, p2, Lcom/bytedance/sdk/openadsdk/g/a/f;->b:Ljava/lang/String;

    invoke-direct {p0, v4, v0}, Lcom/bytedance/sdk/openadsdk/g/a/g;->b(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/g/a/b;)Lcom/bytedance/sdk/openadsdk/g/a/w;

    move-result-object v4

    .line 54
    iput-object v4, p2, Lcom/bytedance/sdk/openadsdk/g/a/f;->d:Lcom/bytedance/sdk/openadsdk/g/a/w;

    if-nez v4, :cond_1

    .line 56
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/a/g;->g:Lcom/bytedance/sdk/openadsdk/g/a/m;

    if-eqz v0, :cond_0

    .line 57
    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/g/a/f;->b:Ljava/lang/String;

    iget-object v4, p1, Lcom/bytedance/sdk/openadsdk/g/a/p;->d:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-interface {v0, p2, v4, v5}, Lcom/bytedance/sdk/openadsdk/g/a/m;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 59
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/g/a/i;->a(Ljava/lang/String;)V

    .line 60
    new-instance p2, Lcom/bytedance/sdk/openadsdk/g/a/r;

    invoke-direct {p2, v1}, Lcom/bytedance/sdk/openadsdk/g/a/r;-><init>(I)V

    throw p2

    .line 62
    :cond_1
    instance-of v5, v0, Lcom/bytedance/sdk/openadsdk/g/a/e;

    if-eqz v5, :cond_2

    const-string v1, "Processing stateless call: "

    .line 63
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/g/a/i;->a(Ljava/lang/String;)V

    .line 64
    check-cast v0, Lcom/bytedance/sdk/openadsdk/g/a/e;

    invoke-direct {p0, p1, v0, p2}, Lcom/bytedance/sdk/openadsdk/g/a/g;->a(Lcom/bytedance/sdk/openadsdk/g/a/p;Lcom/bytedance/sdk/openadsdk/g/a/e;Lcom/bytedance/sdk/openadsdk/g/a/f;)Lcom/bytedance/sdk/openadsdk/g/a/g$a;

    move-result-object p1

    return-object p1

    .line 65
    :cond_2
    instance-of v5, v0, Lcom/bytedance/sdk/openadsdk/g/a/c;

    if-eqz v5, :cond_3

    const-string p2, "Processing raw call: "

    .line 66
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/g/a/i;->a(Ljava/lang/String;)V

    .line 67
    check-cast v0, Lcom/bytedance/sdk/openadsdk/g/a/c;

    invoke-direct {p0, p1, v0, v4}, Lcom/bytedance/sdk/openadsdk/g/a/g;->a(Lcom/bytedance/sdk/openadsdk/g/a/p;Lcom/bytedance/sdk/openadsdk/g/a/c;Lcom/bytedance/sdk/openadsdk/g/a/w;)Lcom/bytedance/sdk/openadsdk/g/a/g$a;

    move-result-object p1

    return-object p1

    .line 70
    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/a/g;->d:Ljava/util/Map;

    iget-object v4, p1, Lcom/bytedance/sdk/openadsdk/g/a/p;->d:Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/g/a/d$b;

    if-eqz v0, :cond_5

    .line 72
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/g/a/d$b;->a()Lcom/bytedance/sdk/openadsdk/g/a/d;

    move-result-object v0

    .line 73
    iget-object v4, p1, Lcom/bytedance/sdk/openadsdk/g/a/p;->d:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/bytedance/sdk/openadsdk/g/a/d;->a(Ljava/lang/String;)V

    .line 74
    iget-object v4, p2, Lcom/bytedance/sdk/openadsdk/g/a/f;->b:Ljava/lang/String;

    invoke-direct {p0, v4, v0}, Lcom/bytedance/sdk/openadsdk/g/a/g;->b(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/g/a/b;)Lcom/bytedance/sdk/openadsdk/g/a/w;

    move-result-object v4

    .line 75
    iput-object v4, p2, Lcom/bytedance/sdk/openadsdk/g/a/f;->d:Lcom/bytedance/sdk/openadsdk/g/a/w;

    if-eqz v4, :cond_4

    const-string v1, "Processing stateful call: "

    .line 81
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/g/a/i;->a(Ljava/lang/String;)V

    .line 82
    invoke-direct {p0, p1, v0, p2}, Lcom/bytedance/sdk/openadsdk/g/a/g;->a(Lcom/bytedance/sdk/openadsdk/g/a/p;Lcom/bytedance/sdk/openadsdk/g/a/d;Lcom/bytedance/sdk/openadsdk/g/a/f;)Lcom/bytedance/sdk/openadsdk/g/a/g$a;

    move-result-object p1

    return-object p1

    .line 77
    :cond_4
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/g/a/i;->a(Ljava/lang/String;)V

    .line 78
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/g/a/d;->d()V

    .line 79
    new-instance p2, Lcom/bytedance/sdk/openadsdk/g/a/r;

    invoke-direct {p2, v1}, Lcom/bytedance/sdk/openadsdk/g/a/r;-><init>(I)V

    throw p2
    :try_end_0
    .catch Lcom/bytedance/sdk/openadsdk/g/a/u$a; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :cond_5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/a/g;->g:Lcom/bytedance/sdk/openadsdk/g/a/m;

    if-eqz v0, :cond_6

    .line 91
    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/g/a/f;->b:Ljava/lang/String;

    iget-object v1, p1, Lcom/bytedance/sdk/openadsdk/g/a/p;->d:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-interface {v0, p2, v1, v2}, Lcom/bytedance/sdk/openadsdk/g/a/m;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 93
    :cond_6
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Received call: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", but not registered."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/g/a/i;->b(Ljava/lang/String;)V

    return-object v3

    :catch_0
    move-exception p2

    .line 86
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "No remote permission config fetched, call pending: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/bytedance/sdk/openadsdk/g/a/i;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 87
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/g/a/g;->e:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    new-instance p1, Lcom/bytedance/sdk/openadsdk/g/a/g$a;

    const/4 p2, 0x0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/g/a/x;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p2, v0, v3}, Lcom/bytedance/sdk/openadsdk/g/a/g$a;-><init>(ZLjava/lang/String;Lcom/bytedance/sdk/openadsdk/g/a/g$1;)V

    return-object p1
.end method

.method a(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/g/a/d$b;)V
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/a/g;->d:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "JsBridge stateful method registered: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/g/a/i;->a(Ljava/lang/String;)V

    return-void
.end method

.method a(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/g/a/e;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/openadsdk/g/a/e<",
            "**>;)V"
        }
    .end annotation

    .line 102
    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/g/a/e;->a(Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/a/g;->c:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "JsBridge stateless method registered: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/g/a/i;->a(Ljava/lang/String;)V

    return-void
.end method
