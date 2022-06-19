.class public Lcom/googlecode/mp4parser/c/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static a:Ljava/util/regex/Pattern; = null

.field static final synthetic b:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "(....|\\.\\.)(\\[(.*)\\])?"

    .line 35
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/googlecode/mp4parser/c/j;->a:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/googlecode/mp4parser/b;Ljava/lang/String;)Lcom/b/a/a/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/b/a/a/b;",
            ">(",
            "Lcom/googlecode/mp4parser/b;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1087
    invoke-static {p0, p1, v0}, Lcom/googlecode/mp4parser/c/j;->a(Ljava/lang/Object;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p0

    .line 74
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/b/a/a/b;

    return-object p0
.end method

.method public static a(Lcom/b/a/a/b;)Ljava/lang/String;
    .locals 8

    const-string v0, ""

    .line 1043
    :goto_0
    invoke-interface {p0}, Lcom/b/a/a/b;->getParent()Lcom/b/a/a/e;

    move-result-object v1

    .line 1045
    invoke-interface {v1}, Lcom/b/a/a/e;->b()Ljava/util/List;

    move-result-object v2

    .line 1046
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/b/a/a/b;

    .line 1047
    invoke-interface {v5}, Lcom/b/a/a/b;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p0}, Lcom/b/a/a/b;->getType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    if-eq v5, p0, :cond_2

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1054
    :cond_2
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {p0}, Lcom/b/a/a/b;->getType()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v5, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v3, 0x1

    aput-object p0, v5, v3

    const-string p0, "/%s[%d]"

    invoke-static {p0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1055
    instance-of p0, v1, Lcom/b/a/a/b;

    if-eqz p0, :cond_3

    .line 1056
    move-object p0, v1

    check-cast p0, Lcom/b/a/a/b;

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public static a(Lcom/b/a/a/b;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/b/a/a/b;",
            ">(",
            "Lcom/b/a/a/b;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1095
    invoke-static {p0, p1, v0}, Lcom/googlecode/mp4parser/c/j;->a(Ljava/lang/Object;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static a(Lcom/b/a/a/b;Ljava/lang/String;Z)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/b/a/a/b;",
            ">(",
            "Lcom/b/a/a/b;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 95
    invoke-static {p0, p1, p2}, Lcom/googlecode/mp4parser/c/j;->a(Ljava/lang/Object;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/b/a/a/e;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/b/a/a/b;",
            ">(",
            "Lcom/b/a/a/e;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2091
    invoke-static {p0, p1, v0}, Lcom/googlecode/mp4parser/c/j;->a(Ljava/lang/Object;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static a(Lcom/b/a/a/e;Ljava/lang/String;Z)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/b/a/a/b;",
            ">(",
            "Lcom/b/a/a/e;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 91
    invoke-static {p0, p1, p2}, Lcom/googlecode/mp4parser/c/j;->a(Ljava/lang/Object;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/lang/Object;Ljava/lang/String;Z)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/b/a/a/b;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "/"

    .line 100
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 101
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 102
    :goto_0
    instance-of p1, p0, Lcom/b/a/a/b;

    if-nez p1, :cond_0

    move-object p1, v1

    goto :goto_1

    .line 103
    :cond_0
    check-cast p0, Lcom/b/a/a/b;

    invoke-interface {p0}, Lcom/b/a/a/b;->getParent()Lcom/b/a/a/e;

    move-result-object p0

    goto :goto_0

    .line 107
    :cond_1
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    .line 108
    instance-of p1, p0, Lcom/b/a/a/b;

    if-eqz p1, :cond_2

    .line 109
    check-cast p0, Lcom/b/a/a/b;

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 111
    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Result of path expression seems to be the root container. This is not allowed!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 116
    :cond_3
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    const/16 v0, 0x2f

    .line 117
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 118
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_4
    const-string v3, ""

    .line 124
    :goto_2
    sget-object v0, Lcom/googlecode/mp4parser/c/j;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 125
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 126
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    const-string v2, ".."

    .line 127
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 128
    instance-of p1, p0, Lcom/b/a/a/b;

    if-eqz p1, :cond_5

    .line 129
    check-cast p0, Lcom/b/a/a/b;

    invoke-interface {p0}, Lcom/b/a/a/b;->getParent()Lcom/b/a/a/e;

    move-result-object p0

    invoke-static {p0, v3, p2}, Lcom/googlecode/mp4parser/c/j;->a(Lcom/b/a/a/e;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 131
    :cond_5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 134
    :cond_6
    instance-of v2, p0, Lcom/b/a/a/e;

    if-eqz v2, :cond_e

    const/4 v2, 0x2

    .line 136
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, -0x1

    if-eqz v2, :cond_7

    const/4 v2, 0x3

    .line 138
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 139
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_3

    :cond_7
    const/4 v0, -0x1

    .line 141
    :goto_3
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 146
    check-cast p0, Lcom/b/a/a/e;

    invoke-interface {p0}, Lcom/b/a/a/e;->b()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 147
    :cond_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_9

    return-object v2

    .line 148
    :cond_9
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/b/a/a/b;

    .line 149
    invoke-interface {v5}, Lcom/b/a/a/b;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c

    if-eq v0, v4, :cond_a

    if-ne v0, v1, :cond_b

    .line 151
    :cond_a
    invoke-static {v5, v3, p2}, Lcom/googlecode/mp4parser/c/j;->a(Lcom/b/a/a/b;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_b
    add-int/lit8 v1, v1, 0x1

    :cond_c
    if-nez p2, :cond_d

    if-ltz v0, :cond_8

    .line 155
    :cond_d
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_8

    return-object v2

    .line 161
    :cond_e
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 165
    :cond_f
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, " is invalid path."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
