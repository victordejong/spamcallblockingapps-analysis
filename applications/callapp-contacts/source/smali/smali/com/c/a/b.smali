.class public final Lcom/c/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Ljava/util/regex/Pattern;

.field static final b:Ljava/util/regex/Pattern;

.field private static c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/c/a/d;",
            ">;"
        }
    .end annotation
.end field

.field private f:I

.field private g:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "((^Sent from my (\\s*\\w+){1,3}$)|(^-\\w|^\\s?__|^\\s?--|^\u2013|^\u2014))"

    const/16 v1, 0x20

    .line 16
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/c/a/b;->a:Ljava/util/regex/Pattern;

    const-string v0, "(^>+)"

    .line 17
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/c/a/b;->b:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/c/a/b;->d:Ljava/util/List;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/c/a/b;->e:Ljava/util/List;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/c/a/b;->c:Ljava/util/List;

    .line 31
    iget-object v0, p0, Lcom/c/a/b;->d:Ljava/util/List;

    const-string v1, "^(On\\s(.{1,500})wrote:)"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    iget-object v0, p0, Lcom/c/a/b;->d:Ljava/util/List;

    const-string v1, "From:[^\\n]+\\n?([^\\n]+\\n?){0,2}To:[^\\n]+\\n?([^\\n]+\\n?){0,2}Subject:[^\\n]+"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    iget-object v0, p0, Lcom/c/a/b;->d:Ljava/util/List;

    const-string v1, "To:[^\\n]+\\n?([^\\n]+\\n?){0,2}From:[^\\n]+\\n?([^\\n]+\\n?){0,2}Subject:[^\\n]+"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x6

    .line 34
    iput v0, p0, Lcom/c/a/b;->f:I

    const/16 v0, 0xc8

    .line 35
    iput v0, p0, Lcom/c/a/b;->g:I

    return-void
.end method

.method private static a(Ljava/util/List;)Lcom/c/a/a;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/c/a/d;",
            ">;)",
            "Lcom/c/a/a;"
        }
    .end annotation

    .line 185
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 186
    invoke-static {p0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 187
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/c/a/d;

    .line 188
    iget-object v2, v1, Lcom/c/a/d;->a:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 189
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/c/a/d;->a:Ljava/util/List;

    const-string v4, "\n"

    invoke-static {v3, v4}, Lorg/apache/commons/lang3/StringUtils;->join(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 190
    new-instance v3, Lcom/c/a/c;

    iget-boolean v4, v1, Lcom/c/a/d;->b:Z

    iget-boolean v5, v1, Lcom/c/a/d;->c:Z

    iget-boolean v1, v1, Lcom/c/a/d;->d:Z

    invoke-direct {v3, v2, v4, v5, v1}, Lcom/c/a/c;-><init>(Ljava/lang/String;ZZZ)V

    .line 191
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 193
    :cond_0
    new-instance p0, Lcom/c/a/a;

    invoke-direct {p0, v0}, Lcom/c/a/a;-><init>(Ljava/util/List;)V

    return-object p0
.end method

.method private a()V
    .locals 4

    .line 201
    iget-object v0, p0, Lcom/c/a/b;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 202
    sget-object v2, Lcom/c/a/b;->c:Ljava/util/List;

    const/16 v3, 0x28

    invoke-static {v1, v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static a(Lcom/c/a/d;)Z
    .locals 1

    .line 231
    iget-object p0, p0, Lcom/c/a/d;->a:Ljava/util/List;

    const-string v0, ""

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/StringUtils;->join(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    return p0
.end method

.method private b(Lcom/c/a/d;)V
    .locals 1

    .line 253
    iget-boolean v0, p1, Lcom/c/a/d;->d:Z

    if-nez v0, :cond_0

    iget-boolean v0, p1, Lcom/c/a/d;->c:Z

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/c/a/b;->a(Lcom/c/a/d;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 254
    iput-boolean v0, p1, Lcom/c/a/d;->b:Z

    .line 256
    :cond_1
    iget-object v0, p0, Lcom/c/a/b;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private b(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 268
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/c/a/b;->f:I

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    return v2

    .line 270
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 271
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget v3, p0, Lcom/c/a/b;->g:I

    if-le v1, v3, :cond_1

    return v2

    .line 274
    :cond_2
    invoke-static {p1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-static {p1, v1}, Lorg/apache/commons/lang3/StringUtils;->join(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 276
    sget-object v0, Lcom/c/a/b;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/regex/Pattern;

    .line 277
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 p1, 0x1

    return p1

    :cond_4
    return v2
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/c/a/a;
    .locals 11

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/c/a/b;->e:Ljava/util/List;

    .line 46
    invoke-direct {p0}, Lcom/c/a/b;->a()V

    const-string v0, "\r\n"

    const-string v1, "\n"

    .line 49
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 54
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 60
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->reverse([Ljava/lang/Object;)V

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 68
    array-length v2, p1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v6, v4

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v2, :cond_9

    aget-object v7, p1, v5

    .line 70
    invoke-static {v7, v1}, Lorg/apache/commons/lang3/StringUtils;->stripEnd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 72
    invoke-static {v7, v4}, Lorg/apache/commons/lang3/StringUtils;->stripEnd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    if-eqz v6, :cond_2

    .line 80
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 81
    iget-object v9, v6, Lcom/c/a/d;->a:Ljava/util/List;

    iget-object v10, v6, Lcom/c/a/d;->a:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    sub-int/2addr v10, v8

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 1212
    sget-object v10, Lcom/c/a/b;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v10, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 84
    iput-boolean v8, v6, Lcom/c/a/d;->c:Z

    .line 85
    invoke-direct {p0, v6}, Lcom/c/a/b;->b(Lcom/c/a/d;)V

    :goto_1
    move-object v6, v4

    goto :goto_2

    .line 89
    :cond_0
    invoke-direct {p0, v0}, Lcom/c/a/b;->b(Ljava/util/List;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 90
    iput-boolean v8, v6, Lcom/c/a/d;->d:Z

    .line 91
    invoke-direct {p0, v6}, Lcom/c/a/b;->b(Lcom/c/a/d;)V

    goto :goto_1

    .line 95
    :cond_1
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1222
    :cond_2
    sget-object v9, Lcom/c/a/b;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v9, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-eqz v6, :cond_5

    .line 1245
    iget-boolean v10, v6, Lcom/c/a/d;->d:Z

    if-eq v10, v9, :cond_4

    iget-boolean v10, v6, Lcom/c/a/d;->d:Z

    if-eqz v10, :cond_3

    new-array v10, v8, [Ljava/lang/String;

    aput-object v7, v10, v3

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/c/a/b;->b(Ljava/util/List;)Z

    move-result v10

    if-nez v10, :cond_4

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_3

    goto :goto_3

    :cond_3
    const/4 v8, 0x0

    :cond_4
    :goto_3
    if-nez v8, :cond_7

    :cond_5
    if-eqz v6, :cond_6

    .line 107
    invoke-direct {p0, v6}, Lcom/c/a/b;->b(Lcom/c/a/d;)V

    .line 109
    :cond_6
    new-instance v6, Lcom/c/a/d;

    invoke-direct {v6}, Lcom/c/a/d;-><init>()V

    .line 110
    iput-boolean v9, v6, Lcom/c/a/d;->d:Z

    .line 111
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v6, Lcom/c/a/d;->a:Ljava/util/List;

    .line 115
    :cond_7
    iget-object v8, v6, Lcom/c/a/d;->a:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_8

    .line 117
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_9
    if-eqz v6, :cond_a

    .line 122
    invoke-direct {p0, v6}, Lcom/c/a/b;->b(Lcom/c/a/d;)V

    .line 124
    :cond_a
    iget-object p1, p0, Lcom/c/a/b;->e:Ljava/util/List;

    invoke-static {p1}, Lcom/c/a/b;->a(Ljava/util/List;)Lcom/c/a/a;

    move-result-object p1

    return-object p1
.end method
