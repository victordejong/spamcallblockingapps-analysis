.class final Lretrofit2/o$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit2/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# static fields
.field private static final x:Ljava/util/regex/Pattern;

.field private static final y:Ljava/util/regex/Pattern;


# instance fields
.field final a:Lretrofit2/Retrofit;

.field final b:Ljava/lang/reflect/Method;

.field final c:[Ljava/lang/annotation/Annotation;

.field final d:[[Ljava/lang/annotation/Annotation;

.field final e:[Ljava/lang/reflect/Type;

.field f:Z

.field g:Z

.field h:Z

.field i:Z

.field j:Z

.field k:Z

.field l:Z

.field m:Z

.field n:Ljava/lang/String;

.field o:Z

.field p:Z

.field q:Z

.field r:Ljava/lang/String;

.field s:Lokhttp3/Headers;

.field t:Lokhttp3/MediaType;

.field u:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field v:[Lretrofit2/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lretrofit2/l<",
            "*>;"
        }
    .end annotation
.end field

.field w:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "\\{([a-zA-Z][a-zA-Z0-9_-]*)\\}"

    .line 133
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lretrofit2/o$a;->x:Ljava/util/regex/Pattern;

    const-string v0, "[a-zA-Z][a-zA-Z0-9_-]*"

    .line 134
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lretrofit2/o$a;->y:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>(Lretrofit2/Retrofit;Ljava/lang/reflect/Method;)V
    .locals 0

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    iput-object p1, p0, Lretrofit2/o$a;->a:Lretrofit2/Retrofit;

    .line 163
    iput-object p2, p0, Lretrofit2/o$a;->b:Ljava/lang/reflect/Method;

    .line 164
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object p1

    iput-object p1, p0, Lretrofit2/o$a;->c:[Ljava/lang/annotation/Annotation;

    .line 165
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object p1

    iput-object p1, p0, Lretrofit2/o$a;->e:[Ljava/lang/reflect/Type;

    .line 166
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object p1

    iput-object p1, p0, Lretrofit2/o$a;->d:[[Ljava/lang/annotation/Annotation;

    return-void
.end method

.method private static a(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 794
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_0

    const-class p0, Ljava/lang/Boolean;

    return-object p0

    .line 795
    :cond_0
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_1

    const-class p0, Ljava/lang/Byte;

    return-object p0

    .line 796
    :cond_1
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_2

    const-class p0, Ljava/lang/Character;

    return-object p0

    .line 797
    :cond_2
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_3

    const-class p0, Ljava/lang/Double;

    return-object p0

    .line 798
    :cond_3
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_4

    const-class p0, Ljava/lang/Float;

    return-object p0

    .line 799
    :cond_4
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_5

    const-class p0, Ljava/lang/Integer;

    return-object p0

    .line 800
    :cond_5
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_6

    const-class p0, Ljava/lang/Long;

    return-object p0

    .line 801
    :cond_6
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_7

    const-class p0, Ljava/lang/Short;

    :cond_7
    return-object p0
.end method

.method private static a(Ljava/lang/String;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 785
    sget-object v0, Lretrofit2/o$a;->x:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 786
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 787
    :goto_0
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 788
    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private a(ILjava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Ljava/lang/annotation/Annotation;)Lretrofit2/l;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Ljava/lang/annotation/Annotation;",
            ")",
            "Lretrofit2/l<",
            "*>;"
        }
    .end annotation

    .line 340
    instance-of v0, p4, Lretrofit2/b/y;

    const-string v1, "@Path parameters may not be used with @Url."

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_8

    .line 341
    invoke-direct {p0, p1, p2}, Lretrofit2/o$a;->a(ILjava/lang/reflect/Type;)V

    .line 342
    iget-boolean p3, p0, Lretrofit2/o$a;->m:Z

    if-nez p3, :cond_7

    .line 345
    iget-boolean p3, p0, Lretrofit2/o$a;->i:Z

    if-nez p3, :cond_6

    .line 348
    iget-boolean p3, p0, Lretrofit2/o$a;->j:Z

    if-nez p3, :cond_5

    .line 351
    iget-boolean p3, p0, Lretrofit2/o$a;->k:Z

    if-nez p3, :cond_4

    .line 354
    iget-boolean p3, p0, Lretrofit2/o$a;->l:Z

    if-nez p3, :cond_3

    .line 357
    iget-object p3, p0, Lretrofit2/o$a;->r:Ljava/lang/String;

    if-nez p3, :cond_2

    .line 361
    iput-boolean v2, p0, Lretrofit2/o$a;->m:Z

    .line 363
    const-class p3, Lokhttp3/HttpUrl;

    if-eq p2, p3, :cond_1

    const-class p3, Ljava/lang/String;

    if-eq p2, p3, :cond_1

    const-class p3, Ljava/net/URI;

    if-eq p2, p3, :cond_1

    instance-of p3, p2, Ljava/lang/Class;

    if-eqz p3, :cond_0

    check-cast p2, Ljava/lang/Class;

    .line 366
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    const-string p3, "android.net.Uri"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 369
    :cond_0
    iget-object p2, p0, Lretrofit2/o$a;->b:Ljava/lang/reflect/Method;

    new-array p3, v3, [Ljava/lang/Object;

    const-string p4, "@Url must be okhttp3.HttpUrl, String, java.net.URI, or android.net.Uri type."

    invoke-static {p2, p1, p4, p3}, Lretrofit2/s;->a(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 367
    :cond_1
    :goto_0
    new-instance p2, Lretrofit2/l$n;

    iget-object p3, p0, Lretrofit2/o$a;->b:Ljava/lang/reflect/Method;

    invoke-direct {p2, p3, p1}, Lretrofit2/l$n;-><init>(Ljava/lang/reflect/Method;I)V

    return-object p2

    .line 358
    :cond_2
    iget-object p2, p0, Lretrofit2/o$a;->b:Ljava/lang/reflect/Method;

    new-array p3, v2, [Ljava/lang/Object;

    iget-object p4, p0, Lretrofit2/o$a;->n:Ljava/lang/String;

    aput-object p4, p3, v3

    const-string p4, "@Url cannot be used with @%s URL"

    invoke-static {p2, p1, p4, p3}, Lretrofit2/s;->a(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 355
    :cond_3
    iget-object p2, p0, Lretrofit2/o$a;->b:Ljava/lang/reflect/Method;

    new-array p3, v3, [Ljava/lang/Object;

    const-string p4, "A @Url parameter must not come after a @QueryMap."

    invoke-static {p2, p1, p4, p3}, Lretrofit2/s;->a(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 352
    :cond_4
    iget-object p2, p0, Lretrofit2/o$a;->b:Ljava/lang/reflect/Method;

    new-array p3, v3, [Ljava/lang/Object;

    const-string p4, "A @Url parameter must not come after a @QueryName."

    invoke-static {p2, p1, p4, p3}, Lretrofit2/s;->a(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 349
    :cond_5
    iget-object p2, p0, Lretrofit2/o$a;->b:Ljava/lang/reflect/Method;

    new-array p3, v3, [Ljava/lang/Object;

    const-string p4, "A @Url parameter must not come after a @Query."

    invoke-static {p2, p1, p4, p3}, Lretrofit2/s;->a(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 346
    :cond_6
    iget-object p2, p0, Lretrofit2/o$a;->b:Ljava/lang/reflect/Method;

    new-array p3, v3, [Ljava/lang/Object;

    invoke-static {p2, p1, v1, p3}, Lretrofit2/s;->a(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 343
    :cond_7
    iget-object p2, p0, Lretrofit2/o$a;->b:Ljava/lang/reflect/Method;

    new-array p3, v3, [Ljava/lang/Object;

    const-string p4, "Multiple @Url method annotations found."

    invoke-static {p2, p1, p4, p3}, Lretrofit2/s;->a(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 373
    :cond_8
    instance-of v0, p4, Lretrofit2/b/s;

    const/4 v4, 0x2

    if-eqz v0, :cond_10

    .line 374
    invoke-direct {p0, p1, p2}, Lretrofit2/o$a;->a(ILjava/lang/reflect/Type;)V

    .line 375
    iget-boolean v0, p0, Lretrofit2/o$a;->j:Z

    if-nez v0, :cond_f

    .line 378
    iget-boolean v0, p0, Lretrofit2/o$a;->k:Z

    if-nez v0, :cond_e

    .line 381
    iget-boolean v0, p0, Lretrofit2/o$a;->l:Z

    if-nez v0, :cond_d

    .line 384
    iget-boolean v0, p0, Lretrofit2/o$a;->m:Z

    if-nez v0, :cond_c

    .line 387
    iget-object v0, p0, Lretrofit2/o$a;->r:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 391
    iput-boolean v2, p0, Lretrofit2/o$a;->i:Z

    .line 393
    check-cast p4, Lretrofit2/b/s;

    .line 394
    invoke-interface {p4}, Lretrofit2/b/s;->a()Ljava/lang/String;

    move-result-object v8

    .line 1770
    sget-object v0, Lretrofit2/o$a;->y:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1775
    iget-object v0, p0, Lretrofit2/o$a;->u:Ljava/util/Set;

    invoke-interface {v0, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 397
    iget-object v0, p0, Lretrofit2/o$a;->a:Lretrofit2/Retrofit;

    invoke-virtual {v0, p2, p3}, Lretrofit2/Retrofit;->c(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/e;

    move-result-object v9

    .line 398
    new-instance p2, Lretrofit2/l$i;

    iget-object v6, p0, Lretrofit2/o$a;->b:Ljava/lang/reflect/Method;

    invoke-interface {p4}, Lretrofit2/b/s;->b()Z

    move-result v10

    move-object v5, p2

    move v7, p1

    invoke-direct/range {v5 .. v10}, Lretrofit2/l$i;-><init>(Ljava/lang/reflect/Method;ILjava/lang/String;Lretrofit2/e;Z)V

    return-object p2

    .line 1776
    :cond_9
    iget-object p2, p0, Lretrofit2/o$a;->b:Ljava/lang/reflect/Method;

    new-array p3, v4, [Ljava/lang/Object;

    iget-object p4, p0, Lretrofit2/o$a;->r:Ljava/lang/String;

    aput-object p4, p3, v3

    aput-object v8, p3, v2

    const-string p4, "URL \"%s\" does not contain \"{%s}\"."

    invoke-static {p2, p1, p4, p3}, Lretrofit2/s;->a(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 1771
    :cond_a
    iget-object p2, p0, Lretrofit2/o$a;->b:Ljava/lang/reflect/Method;

    new-array p3, v4, [Ljava/lang/Object;

    sget-object p4, Lretrofit2/o$a;->x:Ljava/util/regex/Pattern;

    .line 1772
    invoke-virtual {p4}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object p4

    aput-object p4, p3, v3

    aput-object v8, p3, v2

    const-string p4, "@Path parameter name must match %s. Found: %s"

    .line 1771
    invoke-static {p2, p1, p4, p3}, Lretrofit2/s;->a(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 388
    :cond_b
    iget-object p2, p0, Lretrofit2/o$a;->b:Ljava/lang/reflect/Method;

    new-array p3, v2, [Ljava/lang/Object;

    iget-object p4, p0, Lretrofit2/o$a;->n:Ljava/lang/String;

    aput-object p4, p3, v3

    const-string p4, "@Path can only be used with relative url on @%s"

    invoke-static {p2, p1, p4, p3}, Lretrofit2/s;->a(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 385
    :cond_c
    iget-object p2, p0, Lretrofit2/o$a;->b:Ljava/lang/reflect/Method;

    new-array p3, v3, [Ljava/lang/Object;

    invoke-static {p2, p1, v1, p3}, Lretrofit2/s;->a(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 382
    :cond_d
    iget-object p2, p0, Lretrofit2/o$a;->b:Ljava/lang/reflect/Method;

    new-array p3, v3, [Ljava/lang/Object;

    const-string p4, "A @Path parameter must not come after a @QueryMap."

    invoke-static {p2, p1, p4, p3}, Lretrofit2/s;->a(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 379
    :cond_e
    iget-object p2, p0, Lretrofit2/o$a;->b:Ljava/lang/reflect/Method;

    new-array p3, v3, [Ljava/lang/Object;

    const-string p4, "A @Path parameter must not come after a @QueryName."

    invoke-static {p2, p1, p4, p3}, Lretrofit2/s;->a(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 376
    :cond_f
    iget-object p2, p0, Lretrofit2/o$a;->b:Ljava/lang/reflect/Method;

    new-array p3, v3, [Ljava/lang/Object;

    const-string p4, "A @Path parameter must not come after a @Query."

    invoke-static {p2, p1, p4, p3}, Lretrofit2/s;->a(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 400
    :cond_10
    instance-of v0, p4, Lretrofit2/b/t;

    const-string v1, "<String>)"

    const-string v5, " must include generic type (e.g., "

    if-eqz v0, :cond_14

    .line 401
    invoke-direct {p0, p1, p2}, Lretrofit2/o$a;->a(ILjava/lang/reflect/Type;)V

    .line 402
    check-cast p4, Lretrofit2/b/t;

    .line 403
    invoke-interface {p4}, Lretrofit2/b/t;->a()Ljava/lang/String;

    move-result-object v0

    .line 404
    invoke-interface {p4}, Lretrofit2/b/t;->b()Z

    move-result p4

    .line 406
    invoke-static {p2}, Lretrofit2/s;->a(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v4

    .line 407
    iput-boolean v2, p0, Lretrofit2/o$a;->j:Z

    .line 408
    const-class v2, Ljava/lang/Iterable;

    invoke-virtual {v2, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 409
    instance-of v2, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v2, :cond_11

    .line 415
    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    .line 416
    invoke-static {v3, p2}, Lretrofit2/s;->a(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p1

    .line 417
    iget-object p2, p0, Lretrofit2/o$a;->a:Lretrofit2/Retrofit;

    .line 418
    invoke-virtual {p2, p1, p3}, Lretrofit2/Retrofit;->c(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/e;

    move-result-object p1

    .line 419
    new-instance p2, Lretrofit2/l$j;

    invoke-direct {p2, v0, p1, p4}, Lretrofit2/l$j;-><init>(Ljava/lang/String;Lretrofit2/e;Z)V

    invoke-virtual {p2}, Lretrofit2/l$j;->a()Lretrofit2/l;

    move-result-object p1

    return-object p1

    .line 410
    :cond_11
    iget-object p2, p0, Lretrofit2/o$a;->b:Ljava/lang/reflect/Method;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    new-array p4, v3, [Ljava/lang/Object;

    .line 410
    invoke-static {p2, p1, p3, p4}, Lretrofit2/s;->a(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 420
    :cond_12
    invoke-virtual {v4}, Ljava/lang/Class;->isArray()Z

    move-result p1

    if-eqz p1, :cond_13

    .line 421
    invoke-virtual {v4}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lretrofit2/o$a;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    .line 422
    iget-object p2, p0, Lretrofit2/o$a;->a:Lretrofit2/Retrofit;

    .line 423
    invoke-virtual {p2, p1, p3}, Lretrofit2/Retrofit;->c(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/e;

    move-result-object p1

    .line 424
    new-instance p2, Lretrofit2/l$j;

    invoke-direct {p2, v0, p1, p4}, Lretrofit2/l$j;-><init>(Ljava/lang/String;Lretrofit2/e;Z)V

    invoke-virtual {p2}, Lretrofit2/l$j;->b()Lretrofit2/l;

    move-result-object p1

    return-object p1

    .line 426
    :cond_13
    iget-object p1, p0, Lretrofit2/o$a;->a:Lretrofit2/Retrofit;

    .line 427
    invoke-virtual {p1, p2, p3}, Lretrofit2/Retrofit;->c(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/e;

    move-result-object p1

    .line 428
    new-instance p2, Lretrofit2/l$j;

    invoke-direct {p2, v0, p1, p4}, Lretrofit2/l$j;-><init>(Ljava/lang/String;Lretrofit2/e;Z)V

    return-object p2

    .line 431
    :cond_14
    instance-of v0, p4, Lretrofit2/b/v;

    if-eqz v0, :cond_18

    .line 432
    invoke-direct {p0, p1, p2}, Lretrofit2/o$a;->a(ILjava/lang/reflect/Type;)V

    .line 433
    check-cast p4, Lretrofit2/b/v;

    .line 434
    invoke-interface {p4}, Lretrofit2/b/v;->a()Z

    move-result p4

    .line 436
    invoke-static {p2}, Lretrofit2/s;->a(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    .line 437
    iput-boolean v2, p0, Lretrofit2/o$a;->k:Z

    .line 438
    const-class v2, Ljava/lang/Iterable;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 439
    instance-of v2, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v2, :cond_15

    .line 445
    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    .line 446
    invoke-static {v3, p2}, Lretrofit2/s;->a(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p1

    .line 447
    iget-object p2, p0, Lretrofit2/o$a;->a:Lretrofit2/Retrofit;

    .line 448
    invoke-virtual {p2, p1, p3}, Lretrofit2/Retrofit;->c(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/e;

    move-result-object p1

    .line 449
    new-instance p2, Lretrofit2/l$l;

    invoke-direct {p2, p1, p4}, Lretrofit2/l$l;-><init>(Lretrofit2/e;Z)V

    invoke-virtual {p2}, Lretrofit2/l$l;->a()Lretrofit2/l;

    move-result-object p1

    return-object p1

    .line 440
    :cond_15
    iget-object p2, p0, Lretrofit2/o$a;->b:Ljava/lang/reflect/Method;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    new-array p4, v3, [Ljava/lang/Object;

    .line 440
    invoke-static {p2, p1, p3, p4}, Lretrofit2/s;->a(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 450
    :cond_16
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result p1

    if-eqz p1, :cond_17

    .line 451
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lretrofit2/o$a;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    .line 452
    iget-object p2, p0, Lretrofit2/o$a;->a:Lretrofit2/Retrofit;

    .line 453
    invoke-virtual {p2, p1, p3}, Lretrofit2/Retrofit;->c(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/e;

    move-result-object p1

    .line 454
    new-instance p2, Lretrofit2/l$l;

    invoke-direct {p2, p1, p4}, Lretrofit2/l$l;-><init>(Lretrofit2/e;Z)V

    invoke-virtual {p2}, Lretrofit2/l$l;->b()Lretrofit2/l;

    move-result-object p1

    return-object p1

    .line 456
    :cond_17
    iget-object p1, p0, Lretrofit2/o$a;->a:Lretrofit2/Retrofit;

    .line 457
    invoke-virtual {p1, p2, p3}, Lretrofit2/Retrofit;->c(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/e;

    move-result-object p1

    .line 458
    new-instance p2, Lretrofit2/l$l;

    invoke-direct {p2, p1, p4}, Lretrofit2/l$l;-><init>(Lretrofit2/e;Z)V

    return-object p2

    .line 461
    :cond_18
    instance-of v0, p4, Lretrofit2/b/u;

    const-string v6, "Map must include generic types (e.g., Map<String, String>)"

    if-eqz v0, :cond_1c

    .line 462
    invoke-direct {p0, p1, p2}, Lretrofit2/o$a;->a(ILjava/lang/reflect/Type;)V

    .line 463
    invoke-static {p2}, Lretrofit2/s;->a(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    .line 464
    iput-boolean v2, p0, Lretrofit2/o$a;->l:Z

    .line 465
    const-class v1, Ljava/util/Map;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 468
    const-class v1, Ljava/util/Map;

    invoke-static {p2, v0, v1}, Lretrofit2/s;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object p2

    .line 469
    instance-of v0, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_1a

    .line 473
    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    .line 474
    invoke-static {v3, p2}, Lretrofit2/s;->a(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 475
    const-class v1, Ljava/lang/String;

    if-ne v1, v0, :cond_19

    .line 478
    invoke-static {v2, p2}, Lretrofit2/s;->a(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p2

    .line 479
    iget-object v0, p0, Lretrofit2/o$a;->a:Lretrofit2/Retrofit;

    .line 480
    invoke-virtual {v0, p2, p3}, Lretrofit2/Retrofit;->c(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/e;

    move-result-object p2

    .line 482
    new-instance p3, Lretrofit2/l$k;

    iget-object v0, p0, Lretrofit2/o$a;->b:Ljava/lang/reflect/Method;

    check-cast p4, Lretrofit2/b/u;

    .line 483
    invoke-interface {p4}, Lretrofit2/b/u;->a()Z

    move-result p4

    invoke-direct {p3, v0, p1, p2, p4}, Lretrofit2/l$k;-><init>(Ljava/lang/reflect/Method;ILretrofit2/e;Z)V

    return-object p3

    .line 476
    :cond_19
    iget-object p2, p0, Lretrofit2/o$a;->b:Ljava/lang/reflect/Method;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const-string p4, "@QueryMap keys must be of type String: "

    invoke-virtual {p4, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    new-array p4, v3, [Ljava/lang/Object;

    invoke-static {p2, p1, p3, p4}, Lretrofit2/s;->a(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 470
    :cond_1a
    iget-object p2, p0, Lretrofit2/o$a;->b:Ljava/lang/reflect/Method;

    new-array p3, v3, [Ljava/lang/Object;

    invoke-static {p2, p1, v6, p3}, Lretrofit2/s;->a(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 466
    :cond_1b
    iget-object p2, p0, Lretrofit2/o$a;->b:Ljava/lang/reflect/Method;

    new-array p3, v3, [Ljava/lang/Object;

    const-string p4, "@QueryMap parameter type must be Map."

    invoke-static {p2, p1, p4, p3}, Lretrofit2/s;->a(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 485
    :cond_1c
    instance-of v0, p4, Lretrofit2/b/i;

    if-eqz v0, :cond_20

    .line 486
    invoke-direct {p0, p1, p2}, Lretrofit2/o$a;->a(ILjava/lang/reflect/Type;)V

    .line 487
    check-cast p4, Lretrofit2/b/i;

    .line 488
    invoke-interface {p4}, Lretrofit2/b/i;->a()Ljava/lang/String;

    move-result-object p4

    .line 490
    invoke-static {p2}, Lretrofit2/s;->a(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    .line 491
    const-class v2, Ljava/lang/Iterable;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 492
    instance-of v2, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v2, :cond_1d

    .line 498
    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    .line 499
    invoke-static {v3, p2}, Lretrofit2/s;->a(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p1

    .line 500
    iget-object p2, p0, Lretrofit2/o$a;->a:Lretrofit2/Retrofit;

    .line 501
    invoke-virtual {p2, p1, p3}, Lretrofit2/Retrofit;->c(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/e;

    move-result-object p1

    .line 502
    new-instance p2, Lretrofit2/l$d;

    invoke-direct {p2, p4, p1}, Lretrofit2/l$d;-><init>(Ljava/lang/String;Lretrofit2/e;)V

    invoke-virtual {p2}, Lretrofit2/l$d;->a()Lretrofit2/l;

    move-result-object p1

    return-object p1

    .line 493
    :cond_1d
    iget-object p2, p0, Lretrofit2/o$a;->b:Ljava/lang/reflect/Method;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 495
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    new-array p4, v3, [Ljava/lang/Object;

    .line 493
    invoke-static {p2, p1, p3, p4}, Lretrofit2/s;->a(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 503
    :cond_1e
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result p1

    if-eqz p1, :cond_1f

    .line 504
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lretrofit2/o$a;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    .line 505
    iget-object p2, p0, Lretrofit2/o$a;->a:Lretrofit2/Retrofit;

    .line 506
    invoke-virtual {p2, p1, p3}, Lretrofit2/Retrofit;->c(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/e;

    move-result-object p1

    .line 507
    new-instance p2, Lretrofit2/l$d;

    invoke-direct {p2, p4, p1}, Lretrofit2/l$d;-><init>(Ljava/lang/String;Lretrofit2/e;)V

    invoke-virtual {p2}, Lretrofit2/l$d;->b()Lretrofit2/l;

    move-result-object p1

    return-object p1

    .line 509
    :cond_1f
    iget-object p1, p0, Lretrofit2/o$a;->a:Lretrofit2/Retrofit;

    .line 510
    invoke-virtual {p1, p2, p3}, Lretrofit2/Retrofit;->c(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/e;

    move-result-object p1

    .line 511
    new-instance p2, Lretrofit2/l$d;

    invoke-direct {p2, p4, p1}, Lretrofit2/l$d;-><init>(Ljava/lang/String;Lretrofit2/e;)V

    return-object p2

    .line 514
    :cond_20
    instance-of v0, p4, Lretrofit2/b/j;

    if-eqz v0, :cond_25

    .line 515
    const-class p4, Lokhttp3/Headers;

    if-ne p2, p4, :cond_21

    .line 516
    new-instance p2, Lretrofit2/l$f;

    iget-object p3, p0, Lretrofit2/o$a;->b:Ljava/lang/reflect/Method;

    invoke-direct {p2, p3, p1}, Lretrofit2/l$f;-><init>(Ljava/lang/reflect/Method;I)V

    return-object p2

    .line 519
    :cond_21
    invoke-direct {p0, p1, p2}, Lretrofit2/o$a;->a(ILjava/lang/reflect/Type;)V

    .line 520
    invoke-static {p2}, Lretrofit2/s;->a(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p4

    .line 521
    const-class v0, Ljava/util/Map;

    invoke-virtual {v0, p4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 524
    const-class v0, Ljava/util/Map;

    invoke-static {p2, p4, v0}, Lretrofit2/s;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object p2

    .line 525
    instance-of p4, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz p4, :cond_23

    .line 529
    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    .line 530
    invoke-static {v3, p2}, Lretrofit2/s;->a(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p4

    .line 531
    const-class v0, Ljava/lang/String;

    if-ne v0, p4, :cond_22

    .line 534
    invoke-static {v2, p2}, Lretrofit2/s;->a(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p2

    .line 535
    iget-object p4, p0, Lretrofit2/o$a;->a:Lretrofit2/Retrofit;

    .line 536
    invoke-virtual {p4, p2, p3}, Lretrofit2/Retrofit;->c(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/e;

    move-result-object p2

    .line 538
    new-instance p3, Lretrofit2/l$e;

    iget-object p4, p0, Lretrofit2/o$a;->b:Ljava/lang/reflect/Method;

    invoke-direct {p3, p4, p1, p2}, Lretrofit2/l$e;-><init>(Ljava/lang/reflect/Method;ILretrofit2/e;)V

    return-object p3

    .line 532
    :cond_22
    iget-object p2, p0, Lretrofit2/o$a;->b:Ljava/lang/reflect/Method;

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const-string p4, "@HeaderMap keys must be of type String: "

    invoke-virtual {p4, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    new-array p4, v3, [Ljava/lang/Object;

    invoke-static {p2, p1, p3, p4}, Lretrofit2/s;->a(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 526
    :cond_23
    iget-object p2, p0, Lretrofit2/o$a;->b:Ljava/lang/reflect/Method;

    new-array p3, v3, [Ljava/lang/Object;

    invoke-static {p2, p1, v6, p3}, Lretrofit2/s;->a(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 522
    :cond_24
    iget-object p2, p0, Lretrofit2/o$a;->b:Ljava/lang/reflect/Method;

    new-array p3, v3, [Ljava/lang/Object;

    const-string p4, "@HeaderMap parameter type must be Map."

    invoke-static {p2, p1, p4, p3}, Lretrofit2/s;->a(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 540
    :cond_25
    instance-of v0, p4, Lretrofit2/b/c;

    if-eqz v0, :cond_2a

    .line 541
    invoke-direct {p0, p1, p2}, Lretrofit2/o$a;->a(ILjava/lang/reflect/Type;)V

    .line 542
    iget-boolean v0, p0, Lretrofit2/o$a;->p:Z

    if-eqz v0, :cond_29

    .line 545
    check-cast p4, Lretrofit2/b/c;

    .line 546
    invoke-interface {p4}, Lretrofit2/b/c;->a()Ljava/lang/String;

    move-result-object v0

    .line 547
    invoke-interface {p4}, Lretrofit2/b/c;->b()Z

    move-result p4

    .line 549
    iput-boolean v2, p0, Lretrofit2/o$a;->f:Z

    .line 551
    invoke-static {p2}, Lretrofit2/s;->a(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v2

    .line 552
    const-class v4, Ljava/lang/Iterable;

    invoke-virtual {v4, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 553
    instance-of v4, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v4, :cond_26

    .line 559
    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    .line 560
    invoke-static {v3, p2}, Lretrofit2/s;->a(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p1

    .line 561
    iget-object p2, p0, Lretrofit2/o$a;->a:Lretrofit2/Retrofit;

    .line 562
    invoke-virtual {p2, p1, p3}, Lretrofit2/Retrofit;->c(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/e;

    move-result-object p1

    .line 563
    new-instance p2, Lretrofit2/l$b;

    invoke-direct {p2, v0, p1, p4}, Lretrofit2/l$b;-><init>(Ljava/lang/String;Lretrofit2/e;Z)V

    invoke-virtual {p2}, Lretrofit2/l$b;->a()Lretrofit2/l;

    move-result-object p1

    return-object p1

    .line 554
    :cond_26
    iget-object p2, p0, Lretrofit2/o$a;->b:Ljava/lang/reflect/Method;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 556
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    new-array p4, v3, [Ljava/lang/Object;

    .line 554
    invoke-static {p2, p1, p3, p4}, Lretrofit2/s;->a(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 564
    :cond_27
    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result p1

    if-eqz p1, :cond_28

    .line 565
    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lretrofit2/o$a;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    .line 566
    iget-object p2, p0, Lretrofit2/o$a;->a:Lretrofit2/Retrofit;

    .line 567
    invoke-virtual {p2, p1, p3}, Lretrofit2/Retrofit;->c(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/e;

    move-result-object p1

    .line 568
    new-instance p2, Lretrofit2/l$b;

    invoke-direct {p2, v0, p1, p4}, Lretrofit2/l$b;-><init>(Ljava/lang/String;Lretrofit2/e;Z)V

    invoke-virtual {p2}, Lretrofit2/l$b;->b()Lretrofit2/l;

    move-result-object p1

    return-object p1

    .line 570
    :cond_28
    iget-object p1, p0, Lretrofit2/o$a;->a:Lretrofit2/Retrofit;

    .line 571
    invoke-virtual {p1, p2, p3}, Lretrofit2/Retrofit;->c(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/e;

    move-result-object p1

    .line 572
    new-instance p2, Lretrofit2/l$b;

    invoke-direct {p2, v0, p1, p4}, Lretrofit2/l$b;-><init>(Ljava/lang/String;Lretrofit2/e;Z)V

    return-object p2

    .line 543
    :cond_29
    iget-object p2, p0, Lretrofit2/o$a;->b:Ljava/lang/reflect/Method;

    new-array p3, v3, [Ljava/lang/Object;

    const-string p4, "@Field parameters can only be used with form encoding."

    invoke-static {p2, p1, p4, p3}, Lretrofit2/s;->a(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 575
    :cond_2a
    instance-of v0, p4, Lretrofit2/b/d;

    if-eqz v0, :cond_2f

    .line 576
    invoke-direct {p0, p1, p2}, Lretrofit2/o$a;->a(ILjava/lang/reflect/Type;)V

    .line 577
    iget-boolean v0, p0, Lretrofit2/o$a;->p:Z

    if-eqz v0, :cond_2e

    .line 581
    invoke-static {p2}, Lretrofit2/s;->a(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    .line 582
    const-class v1, Ljava/util/Map;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 585
    const-class v1, Ljava/util/Map;

    invoke-static {p2, v0, v1}, Lretrofit2/s;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object p2

    .line 586
    instance-of v0, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_2c

    .line 590
    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    .line 591
    invoke-static {v3, p2}, Lretrofit2/s;->a(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 592
    const-class v1, Ljava/lang/String;

    if-ne v1, v0, :cond_2b

    .line 595
    invoke-static {v2, p2}, Lretrofit2/s;->a(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p2

    .line 596
    iget-object v0, p0, Lretrofit2/o$a;->a:Lretrofit2/Retrofit;

    .line 597
    invoke-virtual {v0, p2, p3}, Lretrofit2/Retrofit;->c(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/e;

    move-result-object p2

    .line 599
    iput-boolean v2, p0, Lretrofit2/o$a;->f:Z

    .line 600
    new-instance p3, Lretrofit2/l$c;

    iget-object v0, p0, Lretrofit2/o$a;->b:Ljava/lang/reflect/Method;

    check-cast p4, Lretrofit2/b/d;

    .line 601
    invoke-interface {p4}, Lretrofit2/b/d;->a()Z

    move-result p4

    invoke-direct {p3, v0, p1, p2, p4}, Lretrofit2/l$c;-><init>(Ljava/lang/reflect/Method;ILretrofit2/e;Z)V

    return-object p3

    .line 593
    :cond_2b
    iget-object p2, p0, Lretrofit2/o$a;->b:Ljava/lang/reflect/Method;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const-string p4, "@FieldMap keys must be of type String: "

    invoke-virtual {p4, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    new-array p4, v3, [Ljava/lang/Object;

    invoke-static {p2, p1, p3, p4}, Lretrofit2/s;->a(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 587
    :cond_2c
    iget-object p2, p0, Lretrofit2/o$a;->b:Ljava/lang/reflect/Method;

    new-array p3, v3, [Ljava/lang/Object;

    invoke-static {p2, p1, v6, p3}, Lretrofit2/s;->a(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 583
    :cond_2d
    iget-object p2, p0, Lretrofit2/o$a;->b:Ljava/lang/reflect/Method;

    new-array p3, v3, [Ljava/lang/Object;

    const-string p4, "@FieldMap parameter type must be Map."

    invoke-static {p2, p1, p4, p3}, Lretrofit2/s;->a(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 578
    :cond_2e
    iget-object p2, p0, Lretrofit2/o$a;->b:Ljava/lang/reflect/Method;

    new-array p3, v3, [Ljava/lang/Object;

    const-string p4, "@FieldMap parameters can only be used with form encoding."

    invoke-static {p2, p1, p4, p3}, Lretrofit2/s;->a(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 603
    :cond_2f
    instance-of v0, p4, Lretrofit2/b/q;

    if-eqz v0, :cond_3e

    .line 604
    invoke-direct {p0, p1, p2}, Lretrofit2/o$a;->a(ILjava/lang/reflect/Type;)V

    .line 605
    iget-boolean v0, p0, Lretrofit2/o$a;->q:Z

    if-eqz v0, :cond_3d

    .line 609
    check-cast p4, Lretrofit2/b/q;

    .line 610
    iput-boolean v2, p0, Lretrofit2/o$a;->g:Z

    .line 612
    invoke-interface {p4}, Lretrofit2/b/q;->a()Ljava/lang/String;

    move-result-object v0

    .line 613
    invoke-static {p2}, Lretrofit2/s;->a(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v6

    .line 614
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_36

    .line 615
    const-class p3, Ljava/lang/Iterable;

    invoke-virtual {p3, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p3

    const-string p4, "@Part annotation must supply a name or use MultipartBody.Part parameter type."

    if-eqz p3, :cond_32

    .line 616
    instance-of p3, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz p3, :cond_31

    .line 622
    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    .line 623
    invoke-static {v3, p2}, Lretrofit2/s;->a(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p2

    .line 624
    const-class p3, Lokhttp3/MultipartBody$Part;

    invoke-static {p2}, Lretrofit2/s;->a(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_30

    .line 628
    sget-object p1, Lretrofit2/l$m;->a:Lretrofit2/l$m;

    invoke-virtual {p1}, Lretrofit2/l$m;->a()Lretrofit2/l;

    move-result-object p1

    return-object p1

    .line 625
    :cond_30
    iget-object p2, p0, Lretrofit2/o$a;->b:Ljava/lang/reflect/Method;

    new-array p3, v3, [Ljava/lang/Object;

    invoke-static {p2, p1, p4, p3}, Lretrofit2/s;->a(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 617
    :cond_31
    iget-object p2, p0, Lretrofit2/o$a;->b:Ljava/lang/reflect/Method;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 619
    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    new-array p4, v3, [Ljava/lang/Object;

    .line 617
    invoke-static {p2, p1, p3, p4}, Lretrofit2/s;->a(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 629
    :cond_32
    invoke-virtual {v6}, Ljava/lang/Class;->isArray()Z

    move-result p2

    if-eqz p2, :cond_34

    .line 630
    invoke-virtual {v6}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p2

    .line 631
    const-class p3, Lokhttp3/MultipartBody$Part;

    invoke-virtual {p3, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_33

    .line 635
    sget-object p1, Lretrofit2/l$m;->a:Lretrofit2/l$m;

    invoke-virtual {p1}, Lretrofit2/l$m;->b()Lretrofit2/l;

    move-result-object p1

    return-object p1

    .line 632
    :cond_33
    iget-object p2, p0, Lretrofit2/o$a;->b:Ljava/lang/reflect/Method;

    new-array p3, v3, [Ljava/lang/Object;

    invoke-static {p2, p1, p4, p3}, Lretrofit2/s;->a(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 636
    :cond_34
    const-class p2, Lokhttp3/MultipartBody$Part;

    invoke-virtual {p2, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_35

    .line 637
    sget-object p1, Lretrofit2/l$m;->a:Lretrofit2/l$m;

    return-object p1

    .line 639
    :cond_35
    iget-object p2, p0, Lretrofit2/o$a;->b:Ljava/lang/reflect/Method;

    new-array p3, v3, [Ljava/lang/Object;

    invoke-static {p2, p1, p4, p3}, Lretrofit2/s;->a(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_36
    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/String;

    const-string v8, "Content-Disposition"

    aput-object v8, v7, v3

    .line 643
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "form-data; name=\""

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\""

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v2

    const-string v0, "Content-Transfer-Encoding"

    aput-object v0, v7, v4

    const/4 v0, 0x3

    .line 645
    invoke-interface {p4}, Lretrofit2/b/q;->b()Ljava/lang/String;

    move-result-object p4

    aput-object p4, v7, v0

    .line 644
    invoke-static {v7}, Lokhttp3/Headers;->of([Ljava/lang/String;)Lokhttp3/Headers;

    move-result-object p4

    .line 647
    const-class v0, Ljava/lang/Iterable;

    invoke-virtual {v0, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    const-string v2, "@Part parameters using the MultipartBody.Part must not include a part name in the annotation."

    if-eqz v0, :cond_39

    .line 648
    instance-of v0, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_38

    .line 654
    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    .line 655
    invoke-static {v3, p2}, Lretrofit2/s;->a(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p2

    .line 656
    const-class v0, Lokhttp3/MultipartBody$Part;

    invoke-static {p2}, Lretrofit2/s;->a(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_37

    .line 661
    iget-object v0, p0, Lretrofit2/o$a;->a:Lretrofit2/Retrofit;

    iget-object v1, p0, Lretrofit2/o$a;->c:[Ljava/lang/annotation/Annotation;

    .line 662
    invoke-virtual {v0, p2, p3, v1}, Lretrofit2/Retrofit;->a(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Lretrofit2/e;

    move-result-object p2

    .line 663
    new-instance p3, Lretrofit2/l$g;

    iget-object v0, p0, Lretrofit2/o$a;->b:Ljava/lang/reflect/Method;

    invoke-direct {p3, v0, p1, p4, p2}, Lretrofit2/l$g;-><init>(Ljava/lang/reflect/Method;ILokhttp3/Headers;Lretrofit2/e;)V

    invoke-virtual {p3}, Lretrofit2/l$g;->a()Lretrofit2/l;

    move-result-object p1

    return-object p1

    .line 657
    :cond_37
    iget-object p2, p0, Lretrofit2/o$a;->b:Ljava/lang/reflect/Method;

    new-array p3, v3, [Ljava/lang/Object;

    invoke-static {p2, p1, v2, p3}, Lretrofit2/s;->a(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 649
    :cond_38
    iget-object p2, p0, Lretrofit2/o$a;->b:Ljava/lang/reflect/Method;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 651
    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    new-array p4, v3, [Ljava/lang/Object;

    .line 649
    invoke-static {p2, p1, p3, p4}, Lretrofit2/s;->a(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 664
    :cond_39
    invoke-virtual {v6}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 665
    invoke-virtual {v6}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p2

    invoke-static {p2}, Lretrofit2/o$a;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p2

    .line 666
    const-class v0, Lokhttp3/MultipartBody$Part;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_3a

    .line 671
    iget-object v0, p0, Lretrofit2/o$a;->a:Lretrofit2/Retrofit;

    iget-object v1, p0, Lretrofit2/o$a;->c:[Ljava/lang/annotation/Annotation;

    .line 672
    invoke-virtual {v0, p2, p3, v1}, Lretrofit2/Retrofit;->a(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Lretrofit2/e;

    move-result-object p2

    .line 673
    new-instance p3, Lretrofit2/l$g;

    iget-object v0, p0, Lretrofit2/o$a;->b:Ljava/lang/reflect/Method;

    invoke-direct {p3, v0, p1, p4, p2}, Lretrofit2/l$g;-><init>(Ljava/lang/reflect/Method;ILokhttp3/Headers;Lretrofit2/e;)V

    invoke-virtual {p3}, Lretrofit2/l$g;->b()Lretrofit2/l;

    move-result-object p1

    return-object p1

    .line 667
    :cond_3a
    iget-object p2, p0, Lretrofit2/o$a;->b:Ljava/lang/reflect/Method;

    new-array p3, v3, [Ljava/lang/Object;

    invoke-static {p2, p1, v2, p3}, Lretrofit2/s;->a(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 674
    :cond_3b
    const-class v0, Lokhttp3/MultipartBody$Part;

    invoke-virtual {v0, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_3c

    .line 679
    iget-object v0, p0, Lretrofit2/o$a;->a:Lretrofit2/Retrofit;

    iget-object v1, p0, Lretrofit2/o$a;->c:[Ljava/lang/annotation/Annotation;

    .line 680
    invoke-virtual {v0, p2, p3, v1}, Lretrofit2/Retrofit;->a(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Lretrofit2/e;

    move-result-object p2

    .line 681
    new-instance p3, Lretrofit2/l$g;

    iget-object v0, p0, Lretrofit2/o$a;->b:Ljava/lang/reflect/Method;

    invoke-direct {p3, v0, p1, p4, p2}, Lretrofit2/l$g;-><init>(Ljava/lang/reflect/Method;ILokhttp3/Headers;Lretrofit2/e;)V

    return-object p3

    .line 675
    :cond_3c
    iget-object p2, p0, Lretrofit2/o$a;->b:Ljava/lang/reflect/Method;

    new-array p3, v3, [Ljava/lang/Object;

    invoke-static {p2, p1, v2, p3}, Lretrofit2/s;->a(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 606
    :cond_3d
    iget-object p2, p0, Lretrofit2/o$a;->b:Ljava/lang/reflect/Method;

    new-array p3, v3, [Ljava/lang/Object;

    const-string p4, "@Part parameters can only be used with multipart encoding."

    invoke-static {p2, p1, p4, p3}, Lretrofit2/s;->a(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 685
    :cond_3e
    instance-of v0, p4, Lretrofit2/b/r;

    if-eqz v0, :cond_44

    .line 686
    invoke-direct {p0, p1, p2}, Lretrofit2/o$a;->a(ILjava/lang/reflect/Type;)V

    .line 687
    iget-boolean v0, p0, Lretrofit2/o$a;->q:Z

    if-eqz v0, :cond_43

    .line 691
    iput-boolean v2, p0, Lretrofit2/o$a;->g:Z

    .line 692
    invoke-static {p2}, Lretrofit2/s;->a(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    .line 693
    const-class v1, Ljava/util/Map;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 696
    const-class v1, Ljava/util/Map;

    invoke-static {p2, v0, v1}, Lretrofit2/s;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object p2

    .line 697
    instance-of v0, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_41

    .line 701
    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    .line 703
    invoke-static {v3, p2}, Lretrofit2/s;->a(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 704
    const-class v1, Ljava/lang/String;

    if-ne v1, v0, :cond_40

    .line 708
    invoke-static {v2, p2}, Lretrofit2/s;->a(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p2

    .line 709
    const-class v0, Lokhttp3/MultipartBody$Part;

    invoke-static {p2}, Lretrofit2/s;->a(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_3f

    .line 714
    iget-object v0, p0, Lretrofit2/o$a;->a:Lretrofit2/Retrofit;

    iget-object v1, p0, Lretrofit2/o$a;->c:[Ljava/lang/annotation/Annotation;

    .line 715
    invoke-virtual {v0, p2, p3, v1}, Lretrofit2/Retrofit;->a(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Lretrofit2/e;

    move-result-object p2

    .line 717
    check-cast p4, Lretrofit2/b/r;

    .line 718
    new-instance p3, Lretrofit2/l$h;

    iget-object v0, p0, Lretrofit2/o$a;->b:Ljava/lang/reflect/Method;

    invoke-interface {p4}, Lretrofit2/b/r;->a()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p3, v0, p1, p2, p4}, Lretrofit2/l$h;-><init>(Ljava/lang/reflect/Method;ILretrofit2/e;Ljava/lang/String;)V

    return-object p3

    .line 710
    :cond_3f
    iget-object p2, p0, Lretrofit2/o$a;->b:Ljava/lang/reflect/Method;

    new-array p3, v3, [Ljava/lang/Object;

    const-string p4, "@PartMap values cannot be MultipartBody.Part. Use @Part List<Part> or a different value type instead."

    invoke-static {p2, p1, p4, p3}, Lretrofit2/s;->a(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 705
    :cond_40
    iget-object p2, p0, Lretrofit2/o$a;->b:Ljava/lang/reflect/Method;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const-string p4, "@PartMap keys must be of type String: "

    invoke-virtual {p4, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    new-array p4, v3, [Ljava/lang/Object;

    invoke-static {p2, p1, p3, p4}, Lretrofit2/s;->a(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 698
    :cond_41
    iget-object p2, p0, Lretrofit2/o$a;->b:Ljava/lang/reflect/Method;

    new-array p3, v3, [Ljava/lang/Object;

    invoke-static {p2, p1, v6, p3}, Lretrofit2/s;->a(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 694
    :cond_42
    iget-object p2, p0, Lretrofit2/o$a;->b:Ljava/lang/reflect/Method;

    new-array p3, v3, [Ljava/lang/Object;

    const-string p4, "@PartMap parameter type must be Map."

    invoke-static {p2, p1, p4, p3}, Lretrofit2/s;->a(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 688
    :cond_43
    iget-object p2, p0, Lretrofit2/o$a;->b:Ljava/lang/reflect/Method;

    new-array p3, v3, [Ljava/lang/Object;

    const-string p4, "@PartMap parameters can only be used with multipart encoding."

    invoke-static {p2, p1, p4, p3}, Lretrofit2/s;->a(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 720
    :cond_44
    instance-of v0, p4, Lretrofit2/b/a;

    if-eqz v0, :cond_47

    .line 721
    invoke-direct {p0, p1, p2}, Lretrofit2/o$a;->a(ILjava/lang/reflect/Type;)V

    .line 722
    iget-boolean p4, p0, Lretrofit2/o$a;->p:Z

    if-nez p4, :cond_46

    iget-boolean p4, p0, Lretrofit2/o$a;->q:Z

    if-nez p4, :cond_46

    .line 726
    iget-boolean p4, p0, Lretrofit2/o$a;->h:Z

    if-nez p4, :cond_45

    .line 732
    :try_start_0
    iget-object p4, p0, Lretrofit2/o$a;->a:Lretrofit2/Retrofit;

    iget-object v0, p0, Lretrofit2/o$a;->c:[Ljava/lang/annotation/Annotation;

    invoke-virtual {p4, p2, p3, v0}, Lretrofit2/Retrofit;->a(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Lretrofit2/e;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 737
    iput-boolean v2, p0, Lretrofit2/o$a;->h:Z

    .line 738
    new-instance p3, Lretrofit2/l$a;

    iget-object p4, p0, Lretrofit2/o$a;->b:Ljava/lang/reflect/Method;

    invoke-direct {p3, p4, p1, p2}, Lretrofit2/l$a;-><init>(Ljava/lang/reflect/Method;ILretrofit2/e;)V

    return-object p3

    :catch_0
    move-exception p3

    .line 735
    iget-object p4, p0, Lretrofit2/o$a;->b:Ljava/lang/reflect/Method;

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p2, v0, v3

    const-string p2, "Unable to create @Body converter for %s"

    invoke-static {p4, p3, p1, p2, v0}, Lretrofit2/s;->a(Ljava/lang/reflect/Method;Ljava/lang/Throwable;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 727
    :cond_45
    iget-object p2, p0, Lretrofit2/o$a;->b:Ljava/lang/reflect/Method;

    new-array p3, v3, [Ljava/lang/Object;

    const-string p4, "Multiple @Body method annotations found."

    invoke-static {p2, p1, p4, p3}, Lretrofit2/s;->a(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 723
    :cond_46
    iget-object p2, p0, Lretrofit2/o$a;->b:Ljava/lang/reflect/Method;

    new-array p3, v3, [Ljava/lang/Object;

    const-string p4, "@Body parameters cannot be used with form or multi-part encoding."

    invoke-static {p2, p1, p4, p3}, Lretrofit2/s;->a(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 740
    :cond_47
    instance-of p3, p4, Lretrofit2/b/x;

    if-eqz p3, :cond_4b

    .line 741
    invoke-direct {p0, p1, p2}, Lretrofit2/o$a;->a(ILjava/lang/reflect/Type;)V

    .line 743
    invoke-static {p2}, Lretrofit2/s;->a(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p2

    add-int/lit8 p3, p1, -0x1

    :goto_1
    if-ltz p3, :cond_4a

    .line 745
    iget-object p4, p0, Lretrofit2/o$a;->v:[Lretrofit2/l;

    aget-object p4, p4, p3

    .line 746
    instance-of v0, p4, Lretrofit2/l$o;

    if-eqz v0, :cond_49

    check-cast p4, Lretrofit2/l$o;

    iget-object p4, p4, Lretrofit2/l$o;->a:Ljava/lang/Class;

    .line 747
    invoke-virtual {p4, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_48

    goto :goto_2

    .line 748
    :cond_48
    iget-object p4, p0, Lretrofit2/o$a;->b:Ljava/lang/reflect/Method;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "@Tag type "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 749
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is duplicate of parameter #"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr p3, v2

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " and would always overwrite its value."

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array p3, v3, [Ljava/lang/Object;

    .line 748
    invoke-static {p4, p1, p2, p3}, Lretrofit2/s;->a(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_49
    :goto_2
    add-int/lit8 p3, p3, -0x1

    goto :goto_1

    .line 756
    :cond_4a
    new-instance p1, Lretrofit2/l$o;

    invoke-direct {p1, p2}, Lretrofit2/l$o;-><init>(Ljava/lang/Class;)V

    return-object p1

    :cond_4b
    const/4 p1, 0x0

    return-object p1
.end method

.method private a(ILjava/lang/reflect/Type;)V
    .locals 3

    .line 763
    invoke-static {p2}, Lretrofit2/s;->d(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 764
    :cond_0
    iget-object v0, p0, Lretrofit2/o$a;->b:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const-string p2, "Parameter type must not include a type variable or wildcard: %s"

    invoke-static {v0, p1, p2, v1}, Lretrofit2/s;->a(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method final a([Ljava/lang/String;)Lokhttp3/Headers;
    .locals 8

    .line 278
    new-instance v0, Lokhttp3/Headers$Builder;

    invoke-direct {v0}, Lokhttp3/Headers$Builder;-><init>()V

    .line 279
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, p1, v3

    const/16 v5, 0x3a

    .line 280
    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v6, -0x1

    const/4 v7, 0x1

    if-eq v5, v6, :cond_1

    if-eqz v5, :cond_1

    .line 281
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v7

    if-eq v5, v6, :cond_1

    .line 285
    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    .line 286
    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Content-Type"

    .line 287
    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 289
    :try_start_0
    invoke-static {v4}, Lokhttp3/MediaType;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v5

    iput-object v5, p0, Lretrofit2/o$a;->t:Lokhttp3/MediaType;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 291
    iget-object v0, p0, Lretrofit2/o$a;->b:Ljava/lang/reflect/Method;

    new-array v1, v7, [Ljava/lang/Object;

    aput-object v4, v1, v2

    const-string v2, "Malformed content type: %s"

    invoke-static {v0, p1, v2, v1}, Lretrofit2/s;->a(Ljava/lang/reflect/Method;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 294
    :cond_0
    invoke-virtual {v0, v6, v4}, Lokhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 282
    :cond_1
    iget-object p1, p0, Lretrofit2/o$a;->b:Ljava/lang/reflect/Method;

    new-array v0, v7, [Ljava/lang/Object;

    aput-object v4, v0, v2

    const-string v1, "@Headers value must be in the form \"Name: Value\". Found: \"%s\""

    invoke-static {p1, v1, v0}, Lretrofit2/s;->a(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 297
    :cond_2
    invoke-virtual {v0}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object p1

    return-object p1
.end method

.method final a(ILjava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Z)Lretrofit2/l;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Z)",
            "Lretrofit2/l<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p3, :cond_2

    .line 304
    array-length v2, p3

    move-object v4, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v5, p3, v3

    .line 306
    invoke-direct {p0, p1, p2, p3, v5}, Lretrofit2/o$a;->a(ILjava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Ljava/lang/annotation/Annotation;)Lretrofit2/l;

    move-result-object v5

    if-eqz v5, :cond_1

    if-nez v4, :cond_0

    move-object v4, v5

    goto :goto_1

    .line 313
    :cond_0
    iget-object p2, p0, Lretrofit2/o$a;->b:Ljava/lang/reflect/Method;

    new-array p3, v1, [Ljava/lang/Object;

    const-string p4, "Multiple Retrofit annotations found, only one allowed."

    invoke-static {p2, p1, p4, p3}, Lretrofit2/s;->a(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    move-object v4, v0

    :cond_3
    if-nez v4, :cond_5

    if-eqz p4, :cond_4

    .line 324
    :try_start_0
    invoke-static {p2}, Lretrofit2/s;->a(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p2

    const-class p3, Lkotlin/c/d;

    if-ne p2, p3, :cond_4

    const/4 p2, 0x1

    .line 325
    iput-boolean p2, p0, Lretrofit2/o$a;->w:Z
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 331
    :catch_0
    :cond_4
    iget-object p2, p0, Lretrofit2/o$a;->b:Ljava/lang/reflect/Method;

    new-array p3, v1, [Ljava/lang/Object;

    const-string p4, "No Retrofit annotation found."

    invoke-static {p2, p1, p4, p3}, Lretrofit2/s;->a(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_5
    return-object v4
.end method

.method final a(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    .line 250
    iget-object v0, p0, Lretrofit2/o$a;->n:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_3

    .line 254
    iput-object p1, p0, Lretrofit2/o$a;->n:Ljava/lang/String;

    .line 255
    iput-boolean p3, p0, Lretrofit2/o$a;->o:Z

    .line 257
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/16 p1, 0x3f

    .line 262
    invoke-virtual {p2, p1}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    const/4 p3, -0x1

    if-eq p1, p3, :cond_2

    .line 263
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    sub-int/2addr p3, v2

    if-ge p1, p3, :cond_2

    add-int/2addr p1, v2

    .line 265
    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 266
    sget-object p3, Lretrofit2/o$a;->x:Ljava/util/regex/Pattern;

    invoke-virtual {p3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p3

    .line 267
    invoke-virtual {p3}, Ljava/util/regex/Matcher;->find()Z

    move-result p3

    if-nez p3, :cond_1

    goto :goto_0

    .line 268
    :cond_1
    iget-object p2, p0, Lretrofit2/o$a;->b:Ljava/lang/reflect/Method;

    new-array p3, v2, [Ljava/lang/Object;

    aput-object p1, p3, v1

    const-string p1, "URL query string \"%s\" must not have replace block. For dynamic query parameters use @Query."

    invoke-static {p2, p1, p3}, Lretrofit2/s;->a(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 273
    :cond_2
    :goto_0
    iput-object p2, p0, Lretrofit2/o$a;->r:Ljava/lang/String;

    .line 274
    invoke-static {p2}, Lretrofit2/o$a;->a(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lretrofit2/o$a;->u:Ljava/util/Set;

    return-void

    .line 251
    :cond_3
    iget-object p2, p0, Lretrofit2/o$a;->b:Ljava/lang/reflect/Method;

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/Object;

    aput-object v0, p3, v1

    aput-object p1, p3, v2

    const-string p1, "Only one HTTP method is allowed. Found: %s and %s."

    invoke-static {p2, p1, p3}, Lretrofit2/s;->a(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method
