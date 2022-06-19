.class public final Lorg/jsoup/select/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[Ljava/lang/String;

.field private static final b:[Ljava/lang/String;

.field private static final f:Ljava/util/regex/Pattern;

.field private static final g:Ljava/util/regex/Pattern;


# instance fields
.field private c:Lorg/jsoup/c/j;

.field private d:Ljava/lang/String;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jsoup/select/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-string v0, ","

    const-string v1, ">"

    const-string v2, "+"

    const-string/jumbo v3, "~"

    const-string v4, " "

    .line 18
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jsoup/select/h;->a:[Ljava/lang/String;

    const-string v1, "="

    const-string v2, "!="

    const-string v3, "^="

    const-string v4, "$="

    const-string v5, "*="

    const-string/jumbo v6, "~="

    .line 19
    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jsoup/select/h;->b:[Ljava/lang/String;

    const-string v0, "(([+-])?(\\d+)?)n(\\s*([+-])?\\s*\\d+)?"

    const/4 v1, 0x2

    .line 296
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/jsoup/select/h;->f:Ljava/util/regex/Pattern;

    const-string v0, "([+-])?(\\d+)"

    .line 297
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/jsoup/select/h;->g:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jsoup/select/h;->e:Ljava/util/List;

    .line 30
    invoke-static {p1}, Lorg/jsoup/a/c;->a(Ljava/lang/String;)V

    .line 31
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 32
    iput-object p1, p0, Lorg/jsoup/select/h;->d:Ljava/lang/String;

    .line 33
    new-instance v0, Lorg/jsoup/c/j;

    invoke-direct {v0, p1}, Lorg/jsoup/c/j;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/jsoup/select/h;->c:Lorg/jsoup/c/j;

    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 4

    .line 137
    invoke-static {}, Lorg/jsoup/b/c;->a()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 138
    :goto_0
    iget-object v1, p0, Lorg/jsoup/select/h;->c:Lorg/jsoup/c/j;

    invoke-virtual {v1}, Lorg/jsoup/c/j;->a()Z

    move-result v1

    if-nez v1, :cond_2

    .line 139
    iget-object v1, p0, Lorg/jsoup/select/h;->c:Lorg/jsoup/c/j;

    const-string v2, "("

    invoke-virtual {v1, v2}, Lorg/jsoup/c/j;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 140
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/jsoup/select/h;->c:Lorg/jsoup/c/j;

    const/16 v2, 0x28

    const/16 v3, 0x29

    invoke-virtual {v1, v2, v3}, Lorg/jsoup/c/j;->a(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 141
    :cond_0
    iget-object v1, p0, Lorg/jsoup/select/h;->c:Lorg/jsoup/c/j;

    const-string v2, "["

    invoke-virtual {v1, v2}, Lorg/jsoup/c/j;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 142
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/jsoup/select/h;->c:Lorg/jsoup/c/j;

    const/16 v2, 0x5b

    const/16 v3, 0x5d

    invoke-virtual {v1, v2, v3}, Lorg/jsoup/c/j;->a(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 143
    :cond_1
    iget-object v1, p0, Lorg/jsoup/select/h;->c:Lorg/jsoup/c/j;

    sget-object v2, Lorg/jsoup/select/h;->a:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/jsoup/c/j;->a([Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 146
    iget-object v1, p0, Lorg/jsoup/select/h;->c:Lorg/jsoup/c/j;

    invoke-virtual {v1}, Lorg/jsoup/c/j;->c()C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 148
    :cond_2
    invoke-static {v0}, Lorg/jsoup/b/c;->a(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Lorg/jsoup/select/d;
    .locals 4

    const/4 v0, 0x0

    .line 44
    :try_start_0
    new-instance v1, Lorg/jsoup/select/h;

    invoke-direct {v1, p0}, Lorg/jsoup/select/h;-><init>(Ljava/lang/String;)V

    .line 1056
    iget-object p0, v1, Lorg/jsoup/select/h;->c:Lorg/jsoup/c/j;

    invoke-virtual {p0}, Lorg/jsoup/c/j;->d()Z

    .line 1058
    iget-object p0, v1, Lorg/jsoup/select/h;->c:Lorg/jsoup/c/j;

    sget-object v2, Lorg/jsoup/select/h;->a:[Ljava/lang/String;

    invoke-virtual {p0, v2}, Lorg/jsoup/c/j;->a([Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 1059
    iget-object p0, v1, Lorg/jsoup/select/h;->e:Ljava/util/List;

    new-instance v2, Lorg/jsoup/select/i$g;

    invoke-direct {v2}, Lorg/jsoup/select/i$g;-><init>()V

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1060
    iget-object p0, v1, Lorg/jsoup/select/h;->c:Lorg/jsoup/c/j;

    invoke-virtual {p0}, Lorg/jsoup/c/j;->c()C

    move-result p0

    invoke-direct {v1, p0}, Lorg/jsoup/select/h;->a(C)V

    goto :goto_0

    .line 1062
    :cond_0
    invoke-direct {v1}, Lorg/jsoup/select/h;->b()V

    .line 1065
    :goto_0
    iget-object p0, v1, Lorg/jsoup/select/h;->c:Lorg/jsoup/c/j;

    invoke-virtual {p0}, Lorg/jsoup/c/j;->a()Z

    move-result p0

    if-nez p0, :cond_3

    .line 1067
    iget-object p0, v1, Lorg/jsoup/select/h;->c:Lorg/jsoup/c/j;

    invoke-virtual {p0}, Lorg/jsoup/c/j;->d()Z

    move-result p0

    .line 1069
    iget-object v2, v1, Lorg/jsoup/select/h;->c:Lorg/jsoup/c/j;

    sget-object v3, Lorg/jsoup/select/h;->a:[Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/jsoup/c/j;->a([Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1070
    iget-object p0, v1, Lorg/jsoup/select/h;->c:Lorg/jsoup/c/j;

    invoke-virtual {p0}, Lorg/jsoup/c/j;->c()C

    move-result p0

    invoke-direct {v1, p0}, Lorg/jsoup/select/h;->a(C)V

    goto :goto_0

    :cond_1
    if-eqz p0, :cond_2

    const/16 p0, 0x20

    .line 1072
    invoke-direct {v1, p0}, Lorg/jsoup/select/h;->a(C)V

    goto :goto_0

    .line 1074
    :cond_2
    invoke-direct {v1}, Lorg/jsoup/select/h;->b()V

    goto :goto_0

    .line 1078
    :cond_3
    iget-object p0, v1, Lorg/jsoup/select/h;->e:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 v2, 0x1

    if-ne p0, v2, :cond_4

    .line 1079
    iget-object p0, v1, Lorg/jsoup/select/h;->e:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/jsoup/select/d;

    return-object p0

    .line 1081
    :cond_4
    new-instance p0, Lorg/jsoup/select/b$a;

    iget-object v1, v1, Lorg/jsoup/select/h;->e:Ljava/util/List;

    invoke-direct {p0, v1}, Lorg/jsoup/select/b$a;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 47
    new-instance v1, Lorg/jsoup/select/Selector$SelectorParseException;

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {v1, p0, v0}, Lorg/jsoup/select/Selector$SelectorParseException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1
.end method

.method private a(C)V
    .locals 10

    .line 85
    iget-object v0, p0, Lorg/jsoup/select/h;->c:Lorg/jsoup/c/j;

    invoke-virtual {v0}, Lorg/jsoup/c/j;->d()Z

    .line 86
    invoke-direct {p0}, Lorg/jsoup/select/h;->a()Ljava/lang/String;

    move-result-object v0

    .line 90
    invoke-static {v0}, Lorg/jsoup/select/h;->a(Ljava/lang/String;)Lorg/jsoup/select/d;

    move-result-object v0

    .line 93
    iget-object v1, p0, Lorg/jsoup/select/h;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x2c

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v3, :cond_0

    .line 94
    iget-object v1, p0, Lorg/jsoup/select/h;->e:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/select/d;

    .line 96
    instance-of v5, v1, Lorg/jsoup/select/b$b;

    if-eqz v5, :cond_1

    if-eq p1, v2, :cond_1

    .line 97
    move-object v5, v1

    check-cast v5, Lorg/jsoup/select/b$b;

    invoke-virtual {v5}, Lorg/jsoup/select/b$b;->a()Lorg/jsoup/select/d;

    move-result-object v5

    const/4 v6, 0x1

    move-object v9, v5

    move-object v5, v1

    move-object v1, v9

    goto :goto_0

    .line 102
    :cond_0
    new-instance v1, Lorg/jsoup/select/b$a;

    iget-object v5, p0, Lorg/jsoup/select/h;->e:Ljava/util/List;

    invoke-direct {v1, v5}, Lorg/jsoup/select/b$a;-><init>(Ljava/util/Collection;)V

    :cond_1
    move-object v5, v1

    const/4 v6, 0x0

    .line 104
    :goto_0
    iget-object v7, p0, Lorg/jsoup/select/h;->e:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    const/16 v7, 0x3e

    const/4 v8, 0x2

    if-ne p1, v7, :cond_2

    .line 108
    new-instance p1, Lorg/jsoup/select/b$a;

    new-array v2, v8, [Lorg/jsoup/select/d;

    aput-object v0, v2, v4

    new-instance v0, Lorg/jsoup/select/i$b;

    invoke-direct {v0, v1}, Lorg/jsoup/select/i$b;-><init>(Lorg/jsoup/select/d;)V

    aput-object v0, v2, v3

    invoke-direct {p1, v2}, Lorg/jsoup/select/b$a;-><init>([Lorg/jsoup/select/d;)V

    goto :goto_1

    :cond_2
    const/16 v7, 0x20

    if-ne p1, v7, :cond_3

    .line 110
    new-instance p1, Lorg/jsoup/select/b$a;

    new-array v2, v8, [Lorg/jsoup/select/d;

    aput-object v0, v2, v4

    new-instance v0, Lorg/jsoup/select/i$e;

    invoke-direct {v0, v1}, Lorg/jsoup/select/i$e;-><init>(Lorg/jsoup/select/d;)V

    aput-object v0, v2, v3

    invoke-direct {p1, v2}, Lorg/jsoup/select/b$a;-><init>([Lorg/jsoup/select/d;)V

    goto :goto_1

    :cond_3
    const/16 v7, 0x2b

    if-ne p1, v7, :cond_4

    .line 112
    new-instance p1, Lorg/jsoup/select/b$a;

    new-array v2, v8, [Lorg/jsoup/select/d;

    aput-object v0, v2, v4

    new-instance v0, Lorg/jsoup/select/i$c;

    invoke-direct {v0, v1}, Lorg/jsoup/select/i$c;-><init>(Lorg/jsoup/select/d;)V

    aput-object v0, v2, v3

    invoke-direct {p1, v2}, Lorg/jsoup/select/b$a;-><init>([Lorg/jsoup/select/d;)V

    goto :goto_1

    :cond_4
    const/16 v7, 0x7e

    if-ne p1, v7, :cond_5

    .line 114
    new-instance p1, Lorg/jsoup/select/b$a;

    new-array v2, v8, [Lorg/jsoup/select/d;

    aput-object v0, v2, v4

    new-instance v0, Lorg/jsoup/select/i$f;

    invoke-direct {v0, v1}, Lorg/jsoup/select/i$f;-><init>(Lorg/jsoup/select/d;)V

    aput-object v0, v2, v3

    invoke-direct {p1, v2}, Lorg/jsoup/select/b$a;-><init>([Lorg/jsoup/select/d;)V

    goto :goto_1

    :cond_5
    if-ne p1, v2, :cond_8

    .line 117
    instance-of p1, v1, Lorg/jsoup/select/b$b;

    if-eqz p1, :cond_6

    .line 118
    check-cast v1, Lorg/jsoup/select/b$b;

    .line 119
    invoke-virtual {v1, v0}, Lorg/jsoup/select/b$b;->b(Lorg/jsoup/select/d;)V

    move-object p1, v1

    goto :goto_1

    .line 121
    :cond_6
    new-instance p1, Lorg/jsoup/select/b$b;

    invoke-direct {p1}, Lorg/jsoup/select/b$b;-><init>()V

    .line 122
    invoke-virtual {p1, v1}, Lorg/jsoup/select/b$b;->b(Lorg/jsoup/select/d;)V

    .line 123
    invoke-virtual {p1, v0}, Lorg/jsoup/select/b$b;->b(Lorg/jsoup/select/d;)V

    :goto_1
    if-eqz v6, :cond_7

    .line 131
    move-object v0, v5

    check-cast v0, Lorg/jsoup/select/b$b;

    invoke-virtual {v0, p1}, Lorg/jsoup/select/b$b;->a(Lorg/jsoup/select/d;)V

    goto :goto_2

    :cond_7
    move-object v5, p1

    .line 133
    :goto_2
    iget-object p1, p0, Lorg/jsoup/select/h;->e:Ljava/util/List;

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 128
    :cond_8
    new-instance v0, Lorg/jsoup/select/Selector$SelectorParseException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Unknown combinator: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-array v1, v4, [Ljava/lang/Object;

    invoke-direct {v0, p1, v1}, Lorg/jsoup/select/Selector$SelectorParseException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method private a(Z)V
    .locals 3

    .line 348
    iget-object v0, p0, Lorg/jsoup/select/h;->c:Lorg/jsoup/c/j;

    if-eqz p1, :cond_0

    const-string v1, ":containsOwn"

    goto :goto_0

    :cond_0
    const-string v1, ":contains"

    :goto_0
    invoke-virtual {v0, v1}, Lorg/jsoup/c/j;->c(Ljava/lang/String;)V

    .line 349
    iget-object v0, p0, Lorg/jsoup/select/h;->c:Lorg/jsoup/c/j;

    const/16 v1, 0x28

    const/16 v2, 0x29

    invoke-virtual {v0, v1, v2}, Lorg/jsoup/c/j;->a(CC)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jsoup/c/j;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ":contains(text) query must not be empty"

    .line 350
    invoke-static {v0, v1}, Lorg/jsoup/a/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 352
    iget-object p1, p0, Lorg/jsoup/select/h;->e:Ljava/util/List;

    new-instance v1, Lorg/jsoup/select/d$m;

    invoke-direct {v1, v0}, Lorg/jsoup/select/d$m;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 354
    :cond_1
    iget-object p1, p0, Lorg/jsoup/select/h;->e:Ljava/util/List;

    new-instance v1, Lorg/jsoup/select/d$n;

    invoke-direct {v1, v0}, Lorg/jsoup/select/d$n;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private a(ZZ)V
    .locals 8

    .line 300
    iget-object v0, p0, Lorg/jsoup/select/h;->c:Lorg/jsoup/c/j;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Lorg/jsoup/c/j;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3015
    invoke-static {v0}, Lorg/jsoup/b/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 301
    sget-object v1, Lorg/jsoup/select/h;->f:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 302
    sget-object v2, Lorg/jsoup/select/h;->g:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    const-string v3, "odd"

    .line 304
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v3, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    const-string v3, "even"

    .line 307
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 310
    :cond_1
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    const-string v4, ""

    const-string v7, "^\\+"

    if-eqz v3, :cond_4

    const/4 v0, 0x3

    .line 311
    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v1, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v7, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    :goto_0
    const/4 v2, 0x4

    .line 312
    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v7, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    move v5, v1

    :cond_3
    move v4, v0

    goto :goto_1

    .line 313
    :cond_4
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 315
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v7, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move v5, v0

    const/4 v4, 0x0

    :goto_1
    if-eqz p2, :cond_6

    if-eqz p1, :cond_5

    .line 321
    iget-object p1, p0, Lorg/jsoup/select/h;->e:Ljava/util/List;

    new-instance p2, Lorg/jsoup/select/d$ab;

    invoke-direct {p2, v4, v5}, Lorg/jsoup/select/d$ab;-><init>(II)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 323
    :cond_5
    iget-object p1, p0, Lorg/jsoup/select/h;->e:Ljava/util/List;

    new-instance p2, Lorg/jsoup/select/d$ac;

    invoke-direct {p2, v4, v5}, Lorg/jsoup/select/d$ac;-><init>(II)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_6
    if-eqz p1, :cond_7

    .line 326
    iget-object p1, p0, Lorg/jsoup/select/h;->e:Ljava/util/List;

    new-instance p2, Lorg/jsoup/select/d$aa;

    invoke-direct {p2, v4, v5}, Lorg/jsoup/select/d$aa;-><init>(II)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 328
    :cond_7
    iget-object p1, p0, Lorg/jsoup/select/h;->e:Ljava/util/List;

    new-instance p2, Lorg/jsoup/select/d$z;

    invoke-direct {p2, v4, v5}, Lorg/jsoup/select/d$z;-><init>(II)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 317
    :cond_8
    new-instance p1, Lorg/jsoup/select/Selector$SelectorParseException;

    new-array p2, v6, [Ljava/lang/Object;

    aput-object v0, p2, v5

    const-string v0, "Could not parse nth-index \'%s\': unexpected format"

    invoke-direct {p1, v0, p2}, Lorg/jsoup/select/Selector$SelectorParseException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1
.end method

.method private b()V
    .locals 5

    .line 152
    iget-object v0, p0, Lorg/jsoup/select/h;->c:Lorg/jsoup/c/j;

    const-string v1, "#"

    invoke-virtual {v0, v1}, Lorg/jsoup/c/j;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    invoke-direct {p0}, Lorg/jsoup/select/h;->c()V

    return-void

    .line 154
    :cond_0
    iget-object v0, p0, Lorg/jsoup/select/h;->c:Lorg/jsoup/c/j;

    const-string v1, "."

    invoke-virtual {v0, v1}, Lorg/jsoup/c/j;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 155
    invoke-direct {p0}, Lorg/jsoup/select/h;->d()V

    return-void

    .line 156
    :cond_1
    iget-object v0, p0, Lorg/jsoup/select/h;->c:Lorg/jsoup/c/j;

    invoke-virtual {v0}, Lorg/jsoup/c/j;->b()Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lorg/jsoup/select/h;->c:Lorg/jsoup/c/j;

    const-string v1, "*|"

    invoke-virtual {v0, v1}, Lorg/jsoup/c/j;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_0

    .line 158
    :cond_2
    iget-object v0, p0, Lorg/jsoup/select/h;->c:Lorg/jsoup/c/j;

    const-string v1, "["

    invoke-virtual {v0, v1}, Lorg/jsoup/c/j;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 159
    invoke-direct {p0}, Lorg/jsoup/select/h;->f()V

    return-void

    .line 160
    :cond_3
    iget-object v0, p0, Lorg/jsoup/select/h;->c:Lorg/jsoup/c/j;

    const-string v1, "*"

    invoke-virtual {v0, v1}, Lorg/jsoup/c/j;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 161
    invoke-direct {p0}, Lorg/jsoup/select/h;->g()V

    return-void

    .line 162
    :cond_4
    iget-object v0, p0, Lorg/jsoup/select/h;->c:Lorg/jsoup/c/j;

    const-string v1, ":lt("

    invoke-virtual {v0, v1}, Lorg/jsoup/c/j;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 163
    invoke-direct {p0}, Lorg/jsoup/select/h;->h()V

    return-void

    .line 164
    :cond_5
    iget-object v0, p0, Lorg/jsoup/select/h;->c:Lorg/jsoup/c/j;

    const-string v1, ":gt("

    invoke-virtual {v0, v1}, Lorg/jsoup/c/j;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 165
    invoke-direct {p0}, Lorg/jsoup/select/h;->i()V

    return-void

    .line 166
    :cond_6
    iget-object v0, p0, Lorg/jsoup/select/h;->c:Lorg/jsoup/c/j;

    const-string v1, ":eq("

    invoke-virtual {v0, v1}, Lorg/jsoup/c/j;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 167
    invoke-direct {p0}, Lorg/jsoup/select/h;->j()V

    return-void

    .line 168
    :cond_7
    iget-object v0, p0, Lorg/jsoup/select/h;->c:Lorg/jsoup/c/j;

    const-string v1, ":has("

    invoke-virtual {v0, v1}, Lorg/jsoup/c/j;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 169
    invoke-direct {p0}, Lorg/jsoup/select/h;->l()V

    return-void

    .line 170
    :cond_8
    iget-object v0, p0, Lorg/jsoup/select/h;->c:Lorg/jsoup/c/j;

    const-string v1, ":contains("

    invoke-virtual {v0, v1}, Lorg/jsoup/c/j;->a(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    .line 171
    invoke-direct {p0, v1}, Lorg/jsoup/select/h;->a(Z)V

    return-void

    .line 172
    :cond_9
    iget-object v0, p0, Lorg/jsoup/select/h;->c:Lorg/jsoup/c/j;

    const-string v2, ":containsOwn("

    invoke-virtual {v0, v2}, Lorg/jsoup/c/j;->a(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_a

    .line 173
    invoke-direct {p0, v2}, Lorg/jsoup/select/h;->a(Z)V

    return-void

    .line 174
    :cond_a
    iget-object v0, p0, Lorg/jsoup/select/h;->c:Lorg/jsoup/c/j;

    const-string v3, ":containsData("

    invoke-virtual {v0, v3}, Lorg/jsoup/c/j;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 175
    invoke-direct {p0}, Lorg/jsoup/select/h;->m()V

    return-void

    .line 176
    :cond_b
    iget-object v0, p0, Lorg/jsoup/select/h;->c:Lorg/jsoup/c/j;

    const-string v3, ":matches("

    invoke-virtual {v0, v3}, Lorg/jsoup/c/j;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 177
    invoke-direct {p0, v1}, Lorg/jsoup/select/h;->b(Z)V

    return-void

    .line 178
    :cond_c
    iget-object v0, p0, Lorg/jsoup/select/h;->c:Lorg/jsoup/c/j;

    const-string v3, ":matchesOwn("

    invoke-virtual {v0, v3}, Lorg/jsoup/c/j;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 179
    invoke-direct {p0, v2}, Lorg/jsoup/select/h;->b(Z)V

    return-void

    .line 180
    :cond_d
    iget-object v0, p0, Lorg/jsoup/select/h;->c:Lorg/jsoup/c/j;

    const-string v3, ":not("

    invoke-virtual {v0, v3}, Lorg/jsoup/c/j;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 181
    invoke-direct {p0}, Lorg/jsoup/select/h;->n()V

    return-void

    .line 182
    :cond_e
    iget-object v0, p0, Lorg/jsoup/select/h;->c:Lorg/jsoup/c/j;

    const-string v3, ":nth-child("

    invoke-virtual {v0, v3}, Lorg/jsoup/c/j;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 183
    invoke-direct {p0, v1, v1}, Lorg/jsoup/select/h;->a(ZZ)V

    return-void

    .line 184
    :cond_f
    iget-object v0, p0, Lorg/jsoup/select/h;->c:Lorg/jsoup/c/j;

    const-string v3, ":nth-last-child("

    invoke-virtual {v0, v3}, Lorg/jsoup/c/j;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 185
    invoke-direct {p0, v2, v1}, Lorg/jsoup/select/h;->a(ZZ)V

    return-void

    .line 186
    :cond_10
    iget-object v0, p0, Lorg/jsoup/select/h;->c:Lorg/jsoup/c/j;

    const-string v3, ":nth-of-type("

    invoke-virtual {v0, v3}, Lorg/jsoup/c/j;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 187
    invoke-direct {p0, v1, v2}, Lorg/jsoup/select/h;->a(ZZ)V

    return-void

    .line 188
    :cond_11
    iget-object v0, p0, Lorg/jsoup/select/h;->c:Lorg/jsoup/c/j;

    const-string v3, ":nth-last-of-type("

    invoke-virtual {v0, v3}, Lorg/jsoup/c/j;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 189
    invoke-direct {p0, v2, v2}, Lorg/jsoup/select/h;->a(ZZ)V

    return-void

    .line 190
    :cond_12
    iget-object v0, p0, Lorg/jsoup/select/h;->c:Lorg/jsoup/c/j;

    const-string v3, ":first-child"

    invoke-virtual {v0, v3}, Lorg/jsoup/c/j;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 191
    iget-object v0, p0, Lorg/jsoup/select/h;->e:Ljava/util/List;

    new-instance v1, Lorg/jsoup/select/d$v;

    invoke-direct {v1}, Lorg/jsoup/select/d$v;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 192
    :cond_13
    iget-object v0, p0, Lorg/jsoup/select/h;->c:Lorg/jsoup/c/j;

    const-string v3, ":last-child"

    invoke-virtual {v0, v3}, Lorg/jsoup/c/j;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 193
    iget-object v0, p0, Lorg/jsoup/select/h;->e:Ljava/util/List;

    new-instance v1, Lorg/jsoup/select/d$x;

    invoke-direct {v1}, Lorg/jsoup/select/d$x;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 194
    :cond_14
    iget-object v0, p0, Lorg/jsoup/select/h;->c:Lorg/jsoup/c/j;

    const-string v3, ":first-of-type"

    invoke-virtual {v0, v3}, Lorg/jsoup/c/j;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 195
    iget-object v0, p0, Lorg/jsoup/select/h;->e:Ljava/util/List;

    new-instance v1, Lorg/jsoup/select/d$w;

    invoke-direct {v1}, Lorg/jsoup/select/d$w;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 196
    :cond_15
    iget-object v0, p0, Lorg/jsoup/select/h;->c:Lorg/jsoup/c/j;

    const-string v3, ":last-of-type"

    invoke-virtual {v0, v3}, Lorg/jsoup/c/j;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 197
    iget-object v0, p0, Lorg/jsoup/select/h;->e:Ljava/util/List;

    new-instance v1, Lorg/jsoup/select/d$y;

    invoke-direct {v1}, Lorg/jsoup/select/d$y;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 198
    :cond_16
    iget-object v0, p0, Lorg/jsoup/select/h;->c:Lorg/jsoup/c/j;

    const-string v3, ":only-child"

    invoke-virtual {v0, v3}, Lorg/jsoup/c/j;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 199
    iget-object v0, p0, Lorg/jsoup/select/h;->e:Ljava/util/List;

    new-instance v1, Lorg/jsoup/select/d$ad;

    invoke-direct {v1}, Lorg/jsoup/select/d$ad;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 200
    :cond_17
    iget-object v0, p0, Lorg/jsoup/select/h;->c:Lorg/jsoup/c/j;

    const-string v3, ":only-of-type"

    invoke-virtual {v0, v3}, Lorg/jsoup/c/j;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 201
    iget-object v0, p0, Lorg/jsoup/select/h;->e:Ljava/util/List;

    new-instance v1, Lorg/jsoup/select/d$ae;

    invoke-direct {v1}, Lorg/jsoup/select/d$ae;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 202
    :cond_18
    iget-object v0, p0, Lorg/jsoup/select/h;->c:Lorg/jsoup/c/j;

    const-string v3, ":empty"

    invoke-virtual {v0, v3}, Lorg/jsoup/c/j;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 203
    iget-object v0, p0, Lorg/jsoup/select/h;->e:Ljava/util/List;

    new-instance v1, Lorg/jsoup/select/d$u;

    invoke-direct {v1}, Lorg/jsoup/select/d$u;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 204
    :cond_19
    iget-object v0, p0, Lorg/jsoup/select/h;->c:Lorg/jsoup/c/j;

    const-string v3, ":root"

    invoke-virtual {v0, v3}, Lorg/jsoup/c/j;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 205
    iget-object v0, p0, Lorg/jsoup/select/h;->e:Ljava/util/List;

    new-instance v1, Lorg/jsoup/select/d$af;

    invoke-direct {v1}, Lorg/jsoup/select/d$af;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 206
    :cond_1a
    iget-object v0, p0, Lorg/jsoup/select/h;->c:Lorg/jsoup/c/j;

    const-string v3, ":matchText"

    invoke-virtual {v0, v3}, Lorg/jsoup/c/j;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 207
    iget-object v0, p0, Lorg/jsoup/select/h;->e:Ljava/util/List;

    new-instance v1, Lorg/jsoup/select/d$ag;

    invoke-direct {v1}, Lorg/jsoup/select/d$ag;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 209
    :cond_1b
    new-instance v0, Lorg/jsoup/select/Selector$SelectorParseException;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lorg/jsoup/select/h;->d:Ljava/lang/String;

    aput-object v4, v3, v1

    iget-object v1, p0, Lorg/jsoup/select/h;->c:Lorg/jsoup/c/j;

    invoke-virtual {v1}, Lorg/jsoup/c/j;->g()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v2

    const-string v1, "Could not parse query \'%s\': unexpected token at \'%s\'"

    invoke-direct {v0, v1, v3}, Lorg/jsoup/select/Selector$SelectorParseException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 157
    :cond_1c
    :goto_0
    invoke-direct {p0}, Lorg/jsoup/select/h;->e()V

    return-void
.end method

.method private b(Z)V
    .locals 3

    .line 367
    iget-object v0, p0, Lorg/jsoup/select/h;->c:Lorg/jsoup/c/j;

    if-eqz p1, :cond_0

    const-string v1, ":matchesOwn"

    goto :goto_0

    :cond_0
    const-string v1, ":matches"

    :goto_0
    invoke-virtual {v0, v1}, Lorg/jsoup/c/j;->c(Ljava/lang/String;)V

    .line 368
    iget-object v0, p0, Lorg/jsoup/select/h;->c:Lorg/jsoup/c/j;

    const/16 v1, 0x28

    const/16 v2, 0x29

    invoke-virtual {v0, v1, v2}, Lorg/jsoup/c/j;->a(CC)Ljava/lang/String;

    move-result-object v0

    const-string v1, ":matches(regex) query must not be empty"

    .line 369
    invoke-static {v0, v1}, Lorg/jsoup/a/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 372
    iget-object p1, p0, Lorg/jsoup/select/h;->e:Ljava/util/List;

    new-instance v1, Lorg/jsoup/select/d$ai;

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/jsoup/select/d$ai;-><init>(Ljava/util/regex/Pattern;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 374
    :cond_1
    iget-object p1, p0, Lorg/jsoup/select/h;->e:Ljava/util/List;

    new-instance v1, Lorg/jsoup/select/d$ah;

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/jsoup/select/d$ah;-><init>(Ljava/util/regex/Pattern;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private c()V
    .locals 3

    .line 214
    iget-object v0, p0, Lorg/jsoup/select/h;->c:Lorg/jsoup/c/j;

    invoke-virtual {v0}, Lorg/jsoup/c/j;->f()Ljava/lang/String;

    move-result-object v0

    .line 215
    invoke-static {v0}, Lorg/jsoup/a/c;->a(Ljava/lang/String;)V

    .line 216
    iget-object v1, p0, Lorg/jsoup/select/h;->e:Ljava/util/List;

    new-instance v2, Lorg/jsoup/select/d$p;

    invoke-direct {v2, v0}, Lorg/jsoup/select/d$p;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private d()V
    .locals 3

    .line 220
    iget-object v0, p0, Lorg/jsoup/select/h;->c:Lorg/jsoup/c/j;

    invoke-virtual {v0}, Lorg/jsoup/c/j;->f()Ljava/lang/String;

    move-result-object v0

    .line 221
    invoke-static {v0}, Lorg/jsoup/a/c;->a(Ljava/lang/String;)V

    .line 222
    iget-object v1, p0, Lorg/jsoup/select/h;->e:Ljava/util/List;

    new-instance v2, Lorg/jsoup/select/d$k;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/jsoup/select/d$k;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private e()V
    .locals 8

    .line 229
    iget-object v0, p0, Lorg/jsoup/select/h;->c:Lorg/jsoup/c/j;

    invoke-virtual {v0}, Lorg/jsoup/c/j;->e()Ljava/lang/String;

    move-result-object v0

    .line 2015
    invoke-static {v0}, Lorg/jsoup/b/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 230
    invoke-static {v0}, Lorg/jsoup/a/c;->a(Ljava/lang/String;)V

    const-string v1, "*|"

    .line 233
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const-string v3, ":"

    if-eqz v2, :cond_0

    .line 234
    iget-object v2, p0, Lorg/jsoup/select/h;->e:Ljava/util/List;

    new-instance v4, Lorg/jsoup/select/b$b;

    const/4 v5, 0x2

    new-array v5, v5, [Lorg/jsoup/select/d;

    const/4 v6, 0x0

    new-instance v7, Lorg/jsoup/select/d$aj;

    invoke-direct {v7, v0}, Lorg/jsoup/select/d$aj;-><init>(Ljava/lang/String;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lorg/jsoup/select/d$ak;

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Lorg/jsoup/select/d$ak;-><init>(Ljava/lang/String;)V

    aput-object v7, v5, v6

    invoke-direct {v4, v5}, Lorg/jsoup/select/b$b;-><init>([Lorg/jsoup/select/d;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    const-string/jumbo v1, "|"

    .line 237
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 238
    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 240
    :cond_1
    iget-object v1, p0, Lorg/jsoup/select/h;->e:Ljava/util/List;

    new-instance v2, Lorg/jsoup/select/d$aj;

    invoke-direct {v2, v0}, Lorg/jsoup/select/d$aj;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private f()V
    .locals 6

    .line 245
    new-instance v0, Lorg/jsoup/c/j;

    iget-object v1, p0, Lorg/jsoup/select/h;->c:Lorg/jsoup/c/j;

    const/16 v2, 0x5b

    const/16 v3, 0x5d

    invoke-virtual {v1, v2, v3}, Lorg/jsoup/c/j;->a(CC)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jsoup/c/j;-><init>(Ljava/lang/String;)V

    .line 246
    sget-object v1, Lorg/jsoup/select/h;->b:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/jsoup/c/j;->b([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 247
    invoke-static {v1}, Lorg/jsoup/a/c;->a(Ljava/lang/String;)V

    .line 248
    invoke-virtual {v0}, Lorg/jsoup/c/j;->d()Z

    .line 250
    invoke-virtual {v0}, Lorg/jsoup/c/j;->a()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    const-string v0, "^"

    .line 251
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lorg/jsoup/select/h;->e:Ljava/util/List;

    new-instance v2, Lorg/jsoup/select/d$d;

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lorg/jsoup/select/d$d;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 254
    :cond_0
    iget-object v0, p0, Lorg/jsoup/select/h;->e:Ljava/util/List;

    new-instance v2, Lorg/jsoup/select/d$b;

    invoke-direct {v2, v1}, Lorg/jsoup/select/d$b;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    const-string v2, "="

    .line 256
    invoke-virtual {v0, v2}, Lorg/jsoup/c/j;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 257
    iget-object v2, p0, Lorg/jsoup/select/h;->e:Ljava/util/List;

    new-instance v3, Lorg/jsoup/select/d$e;

    invoke-virtual {v0}, Lorg/jsoup/c/j;->g()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v1, v0}, Lorg/jsoup/select/d$e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_2
    const-string v2, "!="

    .line 259
    invoke-virtual {v0, v2}, Lorg/jsoup/c/j;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 260
    iget-object v2, p0, Lorg/jsoup/select/h;->e:Ljava/util/List;

    new-instance v3, Lorg/jsoup/select/d$i;

    invoke-virtual {v0}, Lorg/jsoup/c/j;->g()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v1, v0}, Lorg/jsoup/select/d$i;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_3
    const-string v2, "^="

    .line 262
    invoke-virtual {v0, v2}, Lorg/jsoup/c/j;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 263
    iget-object v2, p0, Lorg/jsoup/select/h;->e:Ljava/util/List;

    new-instance v3, Lorg/jsoup/select/d$j;

    invoke-virtual {v0}, Lorg/jsoup/c/j;->g()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v1, v0}, Lorg/jsoup/select/d$j;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_4
    const-string v2, "$="

    .line 265
    invoke-virtual {v0, v2}, Lorg/jsoup/c/j;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 266
    iget-object v2, p0, Lorg/jsoup/select/h;->e:Ljava/util/List;

    new-instance v3, Lorg/jsoup/select/d$g;

    invoke-virtual {v0}, Lorg/jsoup/c/j;->g()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v1, v0}, Lorg/jsoup/select/d$g;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_5
    const-string v2, "*="

    .line 268
    invoke-virtual {v0, v2}, Lorg/jsoup/c/j;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 269
    iget-object v2, p0, Lorg/jsoup/select/h;->e:Ljava/util/List;

    new-instance v3, Lorg/jsoup/select/d$f;

    invoke-virtual {v0}, Lorg/jsoup/c/j;->g()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v1, v0}, Lorg/jsoup/select/d$f;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_6
    const-string/jumbo v2, "~="

    .line 271
    invoke-virtual {v0, v2}, Lorg/jsoup/c/j;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 272
    iget-object v2, p0, Lorg/jsoup/select/h;->e:Ljava/util/List;

    new-instance v3, Lorg/jsoup/select/d$h;

    invoke-virtual {v0}, Lorg/jsoup/c/j;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-direct {v3, v1, v0}, Lorg/jsoup/select/d$h;-><init>(Ljava/lang/String;Ljava/util/regex/Pattern;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 274
    :cond_7
    new-instance v1, Lorg/jsoup/select/Selector$SelectorParseException;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/jsoup/select/h;->d:Ljava/lang/String;

    aput-object v5, v2, v4

    invoke-virtual {v0}, Lorg/jsoup/c/j;->g()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    const-string v0, "Could not parse attribute query \'%s\': unexpected token at \'%s\'"

    invoke-direct {v1, v0, v2}, Lorg/jsoup/select/Selector$SelectorParseException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1
.end method

.method private g()V
    .locals 2

    .line 279
    iget-object v0, p0, Lorg/jsoup/select/h;->e:Ljava/util/List;

    new-instance v1, Lorg/jsoup/select/d$a;

    invoke-direct {v1}, Lorg/jsoup/select/d$a;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private h()V
    .locals 3

    .line 284
    iget-object v0, p0, Lorg/jsoup/select/h;->e:Ljava/util/List;

    new-instance v1, Lorg/jsoup/select/d$t;

    invoke-direct {p0}, Lorg/jsoup/select/h;->k()I

    move-result v2

    invoke-direct {v1, v2}, Lorg/jsoup/select/d$t;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private i()V
    .locals 3

    .line 288
    iget-object v0, p0, Lorg/jsoup/select/h;->e:Ljava/util/List;

    new-instance v1, Lorg/jsoup/select/d$s;

    invoke-direct {p0}, Lorg/jsoup/select/h;->k()I

    move-result v2

    invoke-direct {v1, v2}, Lorg/jsoup/select/d$s;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private j()V
    .locals 3

    .line 292
    iget-object v0, p0, Lorg/jsoup/select/h;->e:Ljava/util/List;

    new-instance v1, Lorg/jsoup/select/d$q;

    invoke-direct {p0}, Lorg/jsoup/select/h;->k()I

    move-result v2

    invoke-direct {v1, v2}, Lorg/jsoup/select/d$q;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private k()I
    .locals 3

    .line 333
    iget-object v0, p0, Lorg/jsoup/select/h;->c:Lorg/jsoup/c/j;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Lorg/jsoup/c/j;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 334
    invoke-static {v0}, Lorg/jsoup/b/c;->b(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "Index must be numeric"

    invoke-static {v1, v2}, Lorg/jsoup/a/c;->a(ZLjava/lang/String;)V

    .line 335
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private l()V
    .locals 3

    .line 340
    iget-object v0, p0, Lorg/jsoup/select/h;->c:Lorg/jsoup/c/j;

    const-string v1, ":has"

    invoke-virtual {v0, v1}, Lorg/jsoup/c/j;->c(Ljava/lang/String;)V

    .line 341
    iget-object v0, p0, Lorg/jsoup/select/h;->c:Lorg/jsoup/c/j;

    const/16 v1, 0x28

    const/16 v2, 0x29

    invoke-virtual {v0, v1, v2}, Lorg/jsoup/c/j;->a(CC)Ljava/lang/String;

    move-result-object v0

    const-string v1, ":has(el) subselect must not be empty"

    .line 342
    invoke-static {v0, v1}, Lorg/jsoup/a/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    iget-object v1, p0, Lorg/jsoup/select/h;->e:Ljava/util/List;

    new-instance v2, Lorg/jsoup/select/i$a;

    invoke-static {v0}, Lorg/jsoup/select/h;->a(Ljava/lang/String;)Lorg/jsoup/select/d;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/jsoup/select/i$a;-><init>(Lorg/jsoup/select/d;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private m()V
    .locals 3

    .line 359
    iget-object v0, p0, Lorg/jsoup/select/h;->c:Lorg/jsoup/c/j;

    const-string v1, ":containsData"

    invoke-virtual {v0, v1}, Lorg/jsoup/c/j;->c(Ljava/lang/String;)V

    .line 360
    iget-object v0, p0, Lorg/jsoup/select/h;->c:Lorg/jsoup/c/j;

    const/16 v1, 0x28

    const/16 v2, 0x29

    invoke-virtual {v0, v1, v2}, Lorg/jsoup/c/j;->a(CC)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jsoup/c/j;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ":containsData(text) query must not be empty"

    .line 361
    invoke-static {v0, v1}, Lorg/jsoup/a/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    iget-object v1, p0, Lorg/jsoup/select/h;->e:Ljava/util/List;

    new-instance v2, Lorg/jsoup/select/d$l;

    invoke-direct {v2, v0}, Lorg/jsoup/select/d$l;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private n()V
    .locals 3

    .line 379
    iget-object v0, p0, Lorg/jsoup/select/h;->c:Lorg/jsoup/c/j;

    const-string v1, ":not"

    invoke-virtual {v0, v1}, Lorg/jsoup/c/j;->c(Ljava/lang/String;)V

    .line 380
    iget-object v0, p0, Lorg/jsoup/select/h;->c:Lorg/jsoup/c/j;

    const/16 v1, 0x28

    const/16 v2, 0x29

    invoke-virtual {v0, v1, v2}, Lorg/jsoup/c/j;->a(CC)Ljava/lang/String;

    move-result-object v0

    const-string v1, ":not(selector) subselect must not be empty"

    .line 381
    invoke-static {v0, v1}, Lorg/jsoup/a/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    iget-object v1, p0, Lorg/jsoup/select/h;->e:Ljava/util/List;

    new-instance v2, Lorg/jsoup/select/i$d;

    invoke-static {v0}, Lorg/jsoup/select/h;->a(Ljava/lang/String;)Lorg/jsoup/select/d;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/jsoup/select/i$d;-><init>(Lorg/jsoup/select/d;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
