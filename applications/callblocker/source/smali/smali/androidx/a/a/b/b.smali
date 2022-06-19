.class public Landroidx/a/a/b/b;
.super Ljava/lang/Object;
.source "SafeIterableMap.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/a/a/b/b$c;,
        Landroidx/a/a/b/b$f;,
        Landroidx/a/a/b/b$d;,
        Landroidx/a/a/b/b$b;,
        Landroidx/a/a/b/b$a;,
        Landroidx/a/a/b/b$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field a:Landroidx/a/a/b/b$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/a/a/b/b$c",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private b:Landroidx/a/a/b/b$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/a/a/b/b$c",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private c:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroidx/a/a/b/b$f",
            "<TK;TV;>;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Landroidx/a/a/b/b;->c:Ljava/util/WeakHashMap;

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Landroidx/a/a/b/b;->d:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Landroidx/a/a/b/b;->d:I

    return v0
.end method

.method protected a(Ljava/lang/Object;)Landroidx/a/a/b/b$c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Landroidx/a/a/b/b$c",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Landroidx/a/a/b/b;->a:Landroidx/a/a/b/b$c;

    .line 47
    :goto_0
    if-eqz v0, :cond_0

    .line 48
    iget-object v1, v0, Landroidx/a/a/b/b$c;->a:Ljava/lang/Object;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 53
    :cond_0
    return-object v0

    .line 51
    :cond_1
    iget-object v0, v0, Landroidx/a/a/b/b$c;->c:Landroidx/a/a/b/b$c;

    goto :goto_0
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 66
    invoke-virtual {p0, p1}, Landroidx/a/a/b/b;->a(Ljava/lang/Object;)Landroidx/a/a/b/b$c;

    move-result-object v0

    .line 67
    if-eqz v0, :cond_0

    .line 68
    iget-object v0, v0, Landroidx/a/a/b/b$c;->b:Ljava/lang/Object;

    .line 71
    :goto_0
    return-object v0

    .line 70
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/a/a/b/b;->b(Ljava/lang/Object;Ljava/lang/Object;)Landroidx/a/a/b/b$c;

    .line 71
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected b(Ljava/lang/Object;Ljava/lang/Object;)Landroidx/a/a/b/b$c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Landroidx/a/a/b/b$c",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 75
    new-instance v0, Landroidx/a/a/b/b$c;

    invoke-direct {v0, p1, p2}, Landroidx/a/a/b/b$c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 76
    iget v1, p0, Landroidx/a/a/b/b;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroidx/a/a/b/b;->d:I

    .line 77
    iget-object v1, p0, Landroidx/a/a/b/b;->b:Landroidx/a/a/b/b$c;

    if-nez v1, :cond_0

    .line 78
    iput-object v0, p0, Landroidx/a/a/b/b;->a:Landroidx/a/a/b/b$c;

    .line 79
    iget-object v1, p0, Landroidx/a/a/b/b;->a:Landroidx/a/a/b/b$c;

    iput-object v1, p0, Landroidx/a/a/b/b;->b:Landroidx/a/a/b/b$c;

    .line 86
    :goto_0
    return-object v0

    .line 83
    :cond_0
    iget-object v1, p0, Landroidx/a/a/b/b;->b:Landroidx/a/a/b/b$c;

    iput-object v0, v1, Landroidx/a/a/b/b$c;->c:Landroidx/a/a/b/b$c;

    .line 84
    iget-object v1, p0, Landroidx/a/a/b/b;->b:Landroidx/a/a/b/b$c;

    iput-object v1, v0, Landroidx/a/a/b/b$c;->d:Landroidx/a/a/b/b$c;

    .line 85
    iput-object v0, p0, Landroidx/a/a/b/b;->b:Landroidx/a/a/b/b$c;

    goto :goto_0
.end method

.method public b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 98
    invoke-virtual {p0, p1}, Landroidx/a/a/b/b;->a(Ljava/lang/Object;)Landroidx/a/a/b/b$c;

    move-result-object v2

    .line 99
    if-nez v2, :cond_0

    move-object v0, v1

    .line 123
    :goto_0
    return-object v0

    .line 102
    :cond_0
    iget v0, p0, Landroidx/a/a/b/b;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/a/a/b/b;->d:I

    .line 103
    iget-object v0, p0, Landroidx/a/a/b/b;->c:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 104
    iget-object v0, p0, Landroidx/a/a/b/b;->c:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/a/a/b/b$f;

    .line 105
    invoke-interface {v0, v2}, Landroidx/a/a/b/b$f;->a_(Landroidx/a/a/b/b$c;)V

    goto :goto_1

    .line 109
    :cond_1
    iget-object v0, v2, Landroidx/a/a/b/b$c;->d:Landroidx/a/a/b/b$c;

    if-eqz v0, :cond_2

    .line 110
    iget-object v0, v2, Landroidx/a/a/b/b$c;->d:Landroidx/a/a/b/b$c;

    iget-object v3, v2, Landroidx/a/a/b/b$c;->c:Landroidx/a/a/b/b$c;

    iput-object v3, v0, Landroidx/a/a/b/b$c;->c:Landroidx/a/a/b/b$c;

    .line 115
    :goto_2
    iget-object v0, v2, Landroidx/a/a/b/b$c;->c:Landroidx/a/a/b/b$c;

    if-eqz v0, :cond_3

    .line 116
    iget-object v0, v2, Landroidx/a/a/b/b$c;->c:Landroidx/a/a/b/b$c;

    iget-object v3, v2, Landroidx/a/a/b/b$c;->d:Landroidx/a/a/b/b$c;

    iput-object v3, v0, Landroidx/a/a/b/b$c;->d:Landroidx/a/a/b/b$c;

    .line 121
    :goto_3
    iput-object v1, v2, Landroidx/a/a/b/b$c;->c:Landroidx/a/a/b/b$c;

    .line 122
    iput-object v1, v2, Landroidx/a/a/b/b$c;->d:Landroidx/a/a/b/b$c;

    .line 123
    iget-object v0, v2, Landroidx/a/a/b/b$c;->b:Ljava/lang/Object;

    goto :goto_0

    .line 112
    :cond_2
    iget-object v0, v2, Landroidx/a/a/b/b$c;->c:Landroidx/a/a/b/b$c;

    iput-object v0, p0, Landroidx/a/a/b/b;->a:Landroidx/a/a/b/b$c;

    goto :goto_2

    .line 118
    :cond_3
    iget-object v0, v2, Landroidx/a/a/b/b$c;->d:Landroidx/a/a/b/b$c;

    iput-object v0, p0, Landroidx/a/a/b/b;->b:Landroidx/a/a/b/b$c;

    goto :goto_3
.end method

.method public b()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 150
    new-instance v0, Landroidx/a/a/b/b$b;

    iget-object v1, p0, Landroidx/a/a/b/b;->b:Landroidx/a/a/b/b$c;

    iget-object v2, p0, Landroidx/a/a/b/b;->a:Landroidx/a/a/b/b$c;

    invoke-direct {v0, v1, v2}, Landroidx/a/a/b/b$b;-><init>(Landroidx/a/a/b/b$c;Landroidx/a/a/b/b$c;)V

    .line 151
    iget-object v1, p0, Landroidx/a/a/b/b;->c:Ljava/util/WeakHashMap;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    return-object v0
.end method

.method public c()Landroidx/a/a/b/b$d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/a/a/b/b",
            "<TK;TV;>.d;"
        }
    .end annotation

    .prologue
    .line 160
    new-instance v0, Landroidx/a/a/b/b$d;

    invoke-direct {v0, p0}, Landroidx/a/a/b/b$d;-><init>(Landroidx/a/a/b/b;)V

    .line 161
    iget-object v1, p0, Landroidx/a/a/b/b;->c:Ljava/util/WeakHashMap;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    return-object v0
.end method

.method public d()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 169
    iget-object v0, p0, Landroidx/a/a/b/b;->a:Landroidx/a/a/b/b$c;

    return-object v0
.end method

.method public e()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 176
    iget-object v0, p0, Landroidx/a/a/b/b;->b:Landroidx/a/a/b/b$c;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 181
    if-ne p1, p0, :cond_1

    move v2, v1

    .line 201
    :cond_0
    :goto_0
    return v2

    .line 184
    :cond_1
    instance-of v0, p1, Landroidx/a/a/b/b;

    if-eqz v0, :cond_0

    .line 187
    check-cast p1, Landroidx/a/a/b/b;

    .line 188
    invoke-virtual {p0}, Landroidx/a/a/b/b;->a()I

    move-result v0

    invoke-virtual {p1}, Landroidx/a/a/b/b;->a()I

    move-result v3

    if-ne v0, v3, :cond_0

    .line 191
    invoke-virtual {p0}, Landroidx/a/a/b/b;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 192
    invoke-virtual {p1}, Landroidx/a/a/b/b;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 193
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 194
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 195
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 196
    if-nez v0, :cond_3

    if-nez v5, :cond_0

    :cond_3
    if-eqz v0, :cond_2

    .line 197
    invoke-interface {v0, v5}, Ljava/util/Map$Entry;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 201
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    :goto_1
    move v2, v0

    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_1
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 206
    const/4 v0, 0x0

    .line 207
    invoke-virtual {p0}, Landroidx/a/a/b/b;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    .line 208
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_0

    .line 211
    :cond_0
    return v1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 140
    new-instance v0, Landroidx/a/a/b/b$a;

    iget-object v1, p0, Landroidx/a/a/b/b;->a:Landroidx/a/a/b/b$c;

    iget-object v2, p0, Landroidx/a/a/b/b;->b:Landroidx/a/a/b/b$c;

    invoke-direct {v0, v1, v2}, Landroidx/a/a/b/b$a;-><init>(Landroidx/a/a/b/b$c;Landroidx/a/a/b/b$c;)V

    .line 141
    iget-object v1, p0, Landroidx/a/a/b/b;->c:Ljava/util/WeakHashMap;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 216
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 217
    const-string/jumbo v0, "["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    invoke-virtual {p0}, Landroidx/a/a/b/b;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 219
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 220
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    const-string/jumbo v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 225
    :cond_1
    const-string/jumbo v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
