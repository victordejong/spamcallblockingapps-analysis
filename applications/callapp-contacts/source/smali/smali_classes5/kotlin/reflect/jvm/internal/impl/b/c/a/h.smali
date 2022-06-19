.class public final Lkotlin/reflect/jvm/internal/impl/b/c/a/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lkotlin/reflect/jvm/internal/impl/b/c/a/h;

.field private static final b:Lkotlin/reflect/jvm/internal/impl/protobuf/f;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/b/c/a/h;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/b/c/a/h;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/b/c/a/h;->a:Lkotlin/reflect/jvm/internal/impl/b/c/a/h;

    .line 19
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/protobuf/f;->a()Lkotlin/reflect/jvm/internal/impl/protobuf/f;

    move-result-object v0

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/b/c/a;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/f;)V

    const-string v1, "newInstance().apply(JvmProtoBuf::registerAllExtensions)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/b/c/a/h;->b:Lkotlin/reflect/jvm/internal/impl/protobuf/f;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lkotlin/reflect/jvm/internal/impl/b/a$p;Lkotlin/reflect/jvm/internal/impl/b/b/c;)Ljava/lang/String;
    .locals 1

    .line 126
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$p;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/b/c/a/b;->a:Lkotlin/reflect/jvm/internal/impl/b/c/a/b;

    .line 21784
    iget p0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->g:I

    .line 126
    invoke-interface {p1, p0}, Lkotlin/reflect/jvm/internal/impl/b/b/c;->b(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/b/c/a/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final a([Ljava/lang/String;[Ljava/lang/String;)Lkotlin/n;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Lkotlin/n<",
            "Lkotlin/reflect/jvm/internal/impl/b/c/a/g;",
            "Lkotlin/reflect/jvm/internal/impl/b/a$b;",
            ">;"
        }
    .end annotation

    const-string v0, "data"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "strings"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/b/c/a/a;->a([Ljava/lang/String;)[B

    move-result-object p0

    const-string v1, "decodeBytes(data)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "bytes"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17031
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 17032
    new-instance p0, Lkotlin/n;

    check-cast v0, Ljava/io/InputStream;

    invoke-static {v0, p1}, Lkotlin/reflect/jvm/internal/impl/b/c/a/h;->a(Ljava/io/InputStream;[Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/b/c/a/g;

    move-result-object p1

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/b/c/a/h;->b:Lkotlin/reflect/jvm/internal/impl/protobuf/f;

    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/impl/b/a$b;->a(Ljava/io/InputStream;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Lkotlin/reflect/jvm/internal/impl/b/a$b;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lkotlin/n;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public static a(Lkotlin/reflect/jvm/internal/impl/b/a$m;Lkotlin/reflect/jvm/internal/impl/b/b/c;Lkotlin/reflect/jvm/internal/impl/b/b/g;Z)Lkotlin/reflect/jvm/internal/impl/b/c/a/e$a;
    .locals 3

    const-string v0, "proto"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameResolver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeTable"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    move-object v0, p0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/protobuf/h$c;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/b/c/a;->d:Lkotlin/reflect/jvm/internal/impl/protobuf/h$e;

    const-string v2, "propertySignature"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/impl/b/b/e;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/h$c;Lkotlin/reflect/jvm/internal/impl/protobuf/h$e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/b/c/a$c;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 113
    :cond_0
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/b/c/a$c;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 20220
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/b/c/a$c;->b:Lkotlin/reflect/jvm/internal/impl/b/c/a$a;

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_2

    if-eqz p3, :cond_2

    return-object v1

    :cond_2
    if-eqz v0, :cond_3

    .line 116
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/b/c/a$a;->c()Z

    move-result p3

    if-eqz p3, :cond_3

    .line 20698
    iget p3, v0, Lkotlin/reflect/jvm/internal/impl/b/c/a$a;->b:I

    goto :goto_1

    .line 21579
    :cond_3
    iget p3, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->d:I

    :goto_1
    if-eqz v0, :cond_4

    .line 118
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/b/c/a$a;->d()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 21721
    iget p0, v0, Lkotlin/reflect/jvm/internal/impl/b/c/a$a;->c:I

    .line 118
    invoke-interface {p1, p0}, Lkotlin/reflect/jvm/internal/impl/b/b/c;->a(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    .line 119
    :cond_4
    invoke-static {p0, p2}, Lkotlin/reflect/jvm/internal/impl/b/b/f;->a(Lkotlin/reflect/jvm/internal/impl/b/a$m;Lkotlin/reflect/jvm/internal/impl/b/b/g;)Lkotlin/reflect/jvm/internal/impl/b/a$p;

    move-result-object p0

    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/b/c/a/h;->a(Lkotlin/reflect/jvm/internal/impl/b/a$p;Lkotlin/reflect/jvm/internal/impl/b/b/c;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_5

    return-object v1

    .line 121
    :cond_5
    :goto_2
    new-instance p2, Lkotlin/reflect/jvm/internal/impl/b/c/a/e$a;

    invoke-interface {p1, p3}, Lkotlin/reflect/jvm/internal/impl/b/b/c;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Lkotlin/reflect/jvm/internal/impl/b/c/a/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2
.end method

.method public static synthetic a(Lkotlin/reflect/jvm/internal/impl/b/c/a/h;Lkotlin/reflect/jvm/internal/impl/b/a$m;Lkotlin/reflect/jvm/internal/impl/b/b/c;Lkotlin/reflect/jvm/internal/impl/b/b/g;)Lkotlin/reflect/jvm/internal/impl/b/c/a/e$a;
    .locals 0

    const/4 p0, 0x1

    .line 106
    invoke-static {p1, p2, p3, p0}, Lkotlin/reflect/jvm/internal/impl/b/c/a/h;->a(Lkotlin/reflect/jvm/internal/impl/b/a$m;Lkotlin/reflect/jvm/internal/impl/b/b/c;Lkotlin/reflect/jvm/internal/impl/b/b/g;Z)Lkotlin/reflect/jvm/internal/impl/b/c/a/e$a;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lkotlin/reflect/jvm/internal/impl/b/a$c;Lkotlin/reflect/jvm/internal/impl/b/b/c;Lkotlin/reflect/jvm/internal/impl/b/b/g;)Lkotlin/reflect/jvm/internal/impl/b/c/a/e$b;
    .locals 10

    const-string v0, "proto"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameResolver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeTable"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    move-object v0, p0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/protobuf/h$c;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/b/c/a;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/h$e;

    const-string v2, "constructorSignature"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/impl/b/b/e;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/h$c;Lkotlin/reflect/jvm/internal/impl/protobuf/h$e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/b/c/a$b;

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/b/c/a$b;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 19236
    iget v1, v0, Lkotlin/reflect/jvm/internal/impl/b/c/a$b;->b:I

    .line 92
    invoke-interface {p1, v1}, Lkotlin/reflect/jvm/internal/impl/b/b/c;->a(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "<init>"

    :goto_0
    if-eqz v0, :cond_1

    .line 96
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/b/c/a$b;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 19259
    iget p0, v0, Lkotlin/reflect/jvm/internal/impl/b/c/a$b;->c:I

    .line 97
    invoke-interface {p1, p0}, Lkotlin/reflect/jvm/internal/impl/b/b/c;->a(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    .line 19534
    :cond_1
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$c;->c:Ljava/util/List;

    const-string v0, "proto.valueParameterList"

    .line 99
    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Iterable;

    .line 146
    new-instance v0, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p0, v2}, Lkotlin/a/n;->a(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 147
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 148
    check-cast v2, Lkotlin/reflect/jvm/internal/impl/b/a$t;

    const-string v3, "it"

    .line 100
    invoke-static {v2, v3}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, p2}, Lkotlin/reflect/jvm/internal/impl/b/b/f;->a(Lkotlin/reflect/jvm/internal/impl/b/a$t;Lkotlin/reflect/jvm/internal/impl/b/b/g;)Lkotlin/reflect/jvm/internal/impl/b/a$p;

    move-result-object v2

    invoke-static {v2, p1}, Lkotlin/reflect/jvm/internal/impl/b/c/a/h;->a(Lkotlin/reflect/jvm/internal/impl/b/a$p;Lkotlin/reflect/jvm/internal/impl/b/b/c;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 149
    :cond_3
    check-cast v0, Ljava/util/List;

    .line 146
    move-object v2, v0

    check-cast v2, Ljava/lang/Iterable;

    const-string p0, ""

    .line 101
    move-object v3, p0

    check-cast v3, Ljava/lang/CharSequence;

    const-string p0, "("

    move-object v4, p0

    check-cast v4, Ljava/lang/CharSequence;

    const-string p0, ")V"

    move-object v5, p0

    check-cast v5, Ljava/lang/CharSequence;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x38

    invoke-static/range {v2 .. v9}, Lkotlin/a/n;->a(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object p0

    .line 103
    :goto_2
    new-instance p1, Lkotlin/reflect/jvm/internal/impl/b/c/a/e$b;

    invoke-direct {p1, v1, p0}, Lkotlin/reflect/jvm/internal/impl/b/c/a/e$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public static a(Lkotlin/reflect/jvm/internal/impl/b/a$h;Lkotlin/reflect/jvm/internal/impl/b/b/c;Lkotlin/reflect/jvm/internal/impl/b/b/g;)Lkotlin/reflect/jvm/internal/impl/b/c/a/e$b;
    .locals 13

    const-string v0, "proto"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameResolver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeTable"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    move-object v0, p0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/protobuf/h$c;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/b/c/a;->b:Lkotlin/reflect/jvm/internal/impl/protobuf/h$e;

    const-string v2, "methodSignature"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/impl/b/b/e;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/h$c;Lkotlin/reflect/jvm/internal/impl/protobuf/h$e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/b/c/a$b;

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/b/c/a$b;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 17236
    iget v1, v0, Lkotlin/reflect/jvm/internal/impl/b/c/a$b;->b:I

    goto :goto_0

    .line 17608
    :cond_0
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->d:I

    :goto_0
    if-eqz v0, :cond_1

    .line 72
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/b/c/a$b;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 18259
    iget p0, v0, Lkotlin/reflect/jvm/internal/impl/b/c/a$b;->c:I

    .line 73
    invoke-interface {p1, p0}, Lkotlin/reflect/jvm/internal/impl/b/b/c;->a(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_3

    .line 75
    :cond_1
    invoke-static {p0, p2}, Lkotlin/reflect/jvm/internal/impl/b/b/f;->b(Lkotlin/reflect/jvm/internal/impl/b/a$h;Lkotlin/reflect/jvm/internal/impl/b/b/g;)Lkotlin/reflect/jvm/internal/impl/b/a$p;

    move-result-object v0

    invoke-static {v0}, Lkotlin/a/n;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 18712
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->j:Ljava/util/List;

    const-string v3, "proto.valueParameterList"

    .line 75
    invoke-static {v2, v3}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Iterable;

    .line 138
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v2, v4}, Lkotlin/a/n;->a(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v3, Ljava/util/Collection;

    .line 139
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 140
    check-cast v5, Lkotlin/reflect/jvm/internal/impl/b/a$t;

    const-string v6, "it"

    .line 75
    invoke-static {v5, v6}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, p2}, Lkotlin/reflect/jvm/internal/impl/b/b/f;->a(Lkotlin/reflect/jvm/internal/impl/b/a$t;Lkotlin/reflect/jvm/internal/impl/b/b/g;)Lkotlin/reflect/jvm/internal/impl/b/a$p;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 141
    :cond_2
    check-cast v3, Ljava/util/List;

    .line 138
    check-cast v3, Ljava/lang/Iterable;

    .line 75
    invoke-static {v0, v3}, Lkotlin/a/n;->b(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 77
    check-cast v0, Ljava/lang/Iterable;

    .line 142
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v0, v4}, Lkotlin/a/n;->a(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .line 143
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 144
    check-cast v3, Lkotlin/reflect/jvm/internal/impl/b/a$p;

    .line 77
    invoke-static {v3, p1}, Lkotlin/reflect/jvm/internal/impl/b/c/a/h;->a(Lkotlin/reflect/jvm/internal/impl/b/a$p;Lkotlin/reflect/jvm/internal/impl/b/b/c;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    return-object v4

    :cond_3
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 145
    :cond_4
    check-cast v2, Ljava/util/List;

    .line 78
    invoke-static {p0, p2}, Lkotlin/reflect/jvm/internal/impl/b/b/f;->a(Lkotlin/reflect/jvm/internal/impl/b/a$h;Lkotlin/reflect/jvm/internal/impl/b/b/g;)Lkotlin/reflect/jvm/internal/impl/b/a$p;

    move-result-object p0

    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/b/c/a/h;->a(Lkotlin/reflect/jvm/internal/impl/b/a$p;Lkotlin/reflect/jvm/internal/impl/b/b/c;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_5

    return-object v4

    .line 80
    :cond_5
    move-object v5, v2

    check-cast v5, Ljava/lang/Iterable;

    const-string p2, ""

    move-object v6, p2

    check-cast v6, Ljava/lang/CharSequence;

    const-string p2, "("

    move-object v7, p2

    check-cast v7, Ljava/lang/CharSequence;

    const-string p2, ")"

    move-object v8, p2

    check-cast v8, Ljava/lang/CharSequence;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x38

    invoke-static/range {v5 .. v12}, Lkotlin/a/n;->a(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 82
    :goto_3
    new-instance p2, Lkotlin/reflect/jvm/internal/impl/b/c/a/e$b;

    invoke-interface {p1, v1}, Lkotlin/reflect/jvm/internal/impl/b/b/c;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Lkotlin/reflect/jvm/internal/impl/b/c/a/e$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2
.end method

.method private static a(Ljava/io/InputStream;[Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/b/c/a/g;
    .locals 2

    .line 52
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/b/c/a/g;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/b/c/a/h;->b:Lkotlin/reflect/jvm/internal/impl/protobuf/f;

    invoke-static {p0, v1}, Lkotlin/reflect/jvm/internal/impl/b/c/a$d;->a(Ljava/io/InputStream;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Lkotlin/reflect/jvm/internal/impl/b/c/a$d;

    move-result-object p0

    const-string v1, "parseDelimitedFrom(this, EXTENSION_REGISTRY)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p0, p1}, Lkotlin/reflect/jvm/internal/impl/b/c/a/g;-><init>(Lkotlin/reflect/jvm/internal/impl/b/c/a$d;[Ljava/lang/String;)V

    return-object v0
.end method

.method public static a()Lkotlin/reflect/jvm/internal/impl/protobuf/f;
    .locals 1

    .line 19
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/b/c/a/h;->b:Lkotlin/reflect/jvm/internal/impl/protobuf/f;

    return-object v0
.end method

.method public static final a(Lkotlin/reflect/jvm/internal/impl/b/a$m;)Z
    .locals 2

    const-string v0, "proto"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/b/c/a/d;->a:Lkotlin/reflect/jvm/internal/impl/b/c/a/d;

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/c/a/d;->a()Lkotlin/reflect/jvm/internal/impl/b/b/b$a;

    move-result-object v0

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/b/c/a;->e:Lkotlin/reflect/jvm/internal/impl/protobuf/h$e;

    invoke-virtual {p0, v1}, Lkotlin/reflect/jvm/internal/impl/b/a$m;->c(Lkotlin/reflect/jvm/internal/impl/protobuf/h$e;)Ljava/lang/Object;

    move-result-object p0

    const-string v1, "proto.getExtension(JvmProtoBuf.flags)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-virtual {v0, p0}, Lkotlin/reflect/jvm/internal/impl/b/b/b$a;->a(I)Ljava/lang/Boolean;

    move-result-object p0

    const-string v0, "JvmFlags.IS_MOVED_FROM_INTERFACE_COMPANION.get(proto.getExtension(JvmProtoBuf.flags))"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static final b([Ljava/lang/String;[Ljava/lang/String;)Lkotlin/n;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Lkotlin/n<",
            "Lkotlin/reflect/jvm/internal/impl/b/c/a/g;",
            "Lkotlin/reflect/jvm/internal/impl/b/a$k;",
            ">;"
        }
    .end annotation

    const-string v0, "data"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "strings"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/b/c/a/a;->a([Ljava/lang/String;)[B

    move-result-object p0

    const-string v1, "decodeBytes(data)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "bytes"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17041
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 17042
    new-instance p0, Lkotlin/n;

    check-cast v0, Ljava/io/InputStream;

    invoke-static {v0, p1}, Lkotlin/reflect/jvm/internal/impl/b/c/a/h;->a(Ljava/io/InputStream;[Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/b/c/a/g;

    move-result-object p1

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/b/c/a/h;->b:Lkotlin/reflect/jvm/internal/impl/protobuf/f;

    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/impl/b/a$k;->a(Ljava/io/InputStream;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Lkotlin/reflect/jvm/internal/impl/b/a$k;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lkotlin/n;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public static final c([Ljava/lang/String;[Ljava/lang/String;)Lkotlin/n;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Lkotlin/n<",
            "Lkotlin/reflect/jvm/internal/impl/b/c/a/g;",
            "Lkotlin/reflect/jvm/internal/impl/b/a$h;",
            ">;"
        }
    .end annotation

    const-string v0, "data"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "strings"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/b/c/a/a;->a([Ljava/lang/String;)[B

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 48
    new-instance p0, Lkotlin/n;

    check-cast v0, Ljava/io/InputStream;

    invoke-static {v0, p1}, Lkotlin/reflect/jvm/internal/impl/b/c/a/h;->a(Ljava/io/InputStream;[Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/b/c/a/g;

    move-result-object p1

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/b/c/a/h;->b:Lkotlin/reflect/jvm/internal/impl/protobuf/f;

    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/impl/b/a$h;->a(Ljava/io/InputStream;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Lkotlin/reflect/jvm/internal/impl/b/a$h;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lkotlin/n;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method
