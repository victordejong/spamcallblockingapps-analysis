.class public abstract Lcom/callapp/contacts/framework/dao/BaseWhereSupport;
.super Lcom/callapp/contacts/framework/dao/BaseStatement;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/callapp/contacts/framework/dao/BaseStatement<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/StringBuilder;

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Lcom/callapp/contacts/framework/dao/BaseStatement;-><init>()V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/framework/dao/BaseWhereSupport;->a:Ljava/util/List;

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/framework/dao/BaseWhereSupport;->b:Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Lcom/callapp/contacts/framework/dao/BaseWhereSupport;->c:Z

    return-void
.end method

.method private d()V
    .locals 2

    .line 19
    iget-boolean v0, p0, Lcom/callapp/contacts/framework/dao/BaseWhereSupport;->c:Z

    if-nez v0, :cond_0

    .line 20
    iget-object v0, p0, Lcom/callapp/contacts/framework/dao/BaseWhereSupport;->b:Ljava/lang/StringBuilder;

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lcom/callapp/contacts/framework/dao/BaseWhereSupport;->c:Z

    return-void
.end method


# virtual methods
.method protected final a()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 156
    iget-object v0, p0, Lcom/callapp/contacts/framework/dao/BaseWhereSupport;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 157
    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 158
    invoke-virtual {p0, v2, v2}, Lcom/callapp/contacts/framework/dao/BaseWhereSupport;->c(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 160
    :cond_0
    iget-object v1, p0, Lcom/callapp/contacts/framework/dao/BaseWhereSupport;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 161
    invoke-virtual {p0, v0, v2}, Lcom/callapp/contacts/framework/dao/BaseWhereSupport;->c(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 163
    :cond_1
    iget-object v1, p0, Lcom/callapp/contacts/framework/dao/BaseWhereSupport;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 164
    invoke-virtual {p0, v0, v1}, Lcom/callapp/contacts/framework/dao/BaseWhereSupport;->c(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method final a(Lcom/callapp/contacts/framework/dao/column/Column;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    if-nez p3, :cond_0

    const/4 p3, 0x0

    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {p1, p3}, Lcom/callapp/contacts/framework/dao/column/Column;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 35
    :goto_0
    iget-object p1, p1, Lcom/callapp/contacts/framework/dao/column/Column;->a:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Lcom/callapp/contacts/framework/dao/BaseWhereSupport;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 39
    invoke-direct {p0}, Lcom/callapp/contacts/framework/dao/BaseWhereSupport;->d()V

    .line 41
    iget-object v0, p0, Lcom/callapp/contacts/framework/dao/BaseWhereSupport;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p3, :cond_1

    const-string p1, "="

    .line 43
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 44
    iget-object p1, p0, Lcom/callapp/contacts/framework/dao/BaseWhereSupport;->b:Ljava/lang/StringBuilder;

    const-string p2, " IS NULL"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 46
    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/framework/dao/BaseWhereSupport;->b:Ljava/lang/StringBuilder;

    const-string p2, " IS NOT NULL"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 49
    :cond_1
    iget-object p1, p0, Lcom/callapp/contacts/framework/dao/BaseWhereSupport;->a:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    iget-object p1, p0, Lcom/callapp/contacts/framework/dao/BaseWhereSupport;->b:Ljava/lang/StringBuilder;

    const-string p3, " "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " ?"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public final varargs a(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2

    .line 26
    invoke-direct {p0}, Lcom/callapp/contacts/framework/dao/BaseWhereSupport;->d()V

    .line 28
    iget-object v0, p0, Lcom/callapp/contacts/framework/dao/BaseWhereSupport;->b:Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    iget-object p1, p0, Lcom/callapp/contacts/framework/dao/BaseWhereSupport;->a:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(ZLcom/callapp/contacts/framework/dao/column/Column;Ljava/util/Collection;)V
    .locals 4

    .line 82
    invoke-static {p3}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 84
    invoke-direct {p0}, Lcom/callapp/contacts/framework/dao/BaseWhereSupport;->d()V

    .line 85
    iget-object p1, p0, Lcom/callapp/contacts/framework/dao/BaseWhereSupport;->b:Ljava/lang/StringBuilder;

    const-string p2, "1=0"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-void

    .line 90
    :cond_1
    invoke-direct {p0}, Lcom/callapp/contacts/framework/dao/BaseWhereSupport;->d()V

    .line 91
    iget-object v0, p0, Lcom/callapp/contacts/framework/dao/BaseWhereSupport;->b:Ljava/lang/StringBuilder;

    iget-object v1, p2, Lcom/callapp/contacts/framework/dao/column/Column;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_2

    .line 93
    iget-object p1, p0, Lcom/callapp/contacts/framework/dao/BaseWhereSupport;->b:Ljava/lang/StringBuilder;

    const-string v0, " NOT"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    :cond_2
    iget-object p1, p0, Lcom/callapp/contacts/framework/dao/BaseWhereSupport;->b:Ljava/lang/StringBuilder;

    const-string v0, " IN ("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    .line 97
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_3
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 98
    instance-of v1, v0, Ljava/lang/Number;

    const-string v2, ", "

    const/4 v3, 0x1

    if-eqz v1, :cond_5

    if-eqz p1, :cond_4

    .line 100
    iget-object v1, p0, Lcom/callapp/contacts/framework/dao/BaseWhereSupport;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    const/4 p1, 0x1

    .line 105
    :goto_1
    iget-object v1, p0, Lcom/callapp/contacts/framework/dao/BaseWhereSupport;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 108
    :cond_5
    invoke-virtual {p2, v0}, Lcom/callapp/contacts/framework/dao/column/Column;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 109
    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz p1, :cond_6

    .line 111
    iget-object v1, p0, Lcom/callapp/contacts/framework/dao/BaseWhereSupport;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_6
    const/4 p1, 0x1

    .line 116
    :goto_2
    iget-object v1, p0, Lcom/callapp/contacts/framework/dao/BaseWhereSupport;->b:Ljava/lang/StringBuilder;

    const/16 v2, 0x3f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 117
    iget-object v1, p0, Lcom/callapp/contacts/framework/dao/BaseWhereSupport;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 121
    :cond_7
    iget-object p1, p0, Lcom/callapp/contacts/framework/dao/BaseWhereSupport;->b:Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public final varargs b(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 5

    .line 125
    array-length v0, p2

    if-nez v0, :cond_0

    .line 127
    invoke-direct {p0}, Lcom/callapp/contacts/framework/dao/BaseWhereSupport;->d()V

    .line 128
    iget-object p1, p0, Lcom/callapp/contacts/framework/dao/BaseWhereSupport;->b:Ljava/lang/StringBuilder;

    const-string p2, "1=0"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 133
    :cond_0
    invoke-direct {p0}, Lcom/callapp/contacts/framework/dao/BaseWhereSupport;->d()V

    .line 134
    iget-object v0, p0, Lcom/callapp/contacts/framework/dao/BaseWhereSupport;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    iget-object p1, p0, Lcom/callapp/contacts/framework/dao/BaseWhereSupport;->b:Ljava/lang/StringBuilder;

    const-string v0, " IN ("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    array-length p1, p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v0, p1, :cond_3

    aget-object v2, p2, v0

    .line 141
    invoke-static {v2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v1, :cond_1

    .line 143
    iget-object v3, p0, Lcom/callapp/contacts/framework/dao/BaseWhereSupport;->b:Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    .line 147
    :goto_1
    iget-object v3, p0, Lcom/callapp/contacts/framework/dao/BaseWhereSupport;->b:Ljava/lang/StringBuilder;

    const/16 v4, 0x3f

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 148
    iget-object v3, p0, Lcom/callapp/contacts/framework/dao/BaseWhereSupport;->a:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 151
    :cond_3
    iget-object p1, p0, Lcom/callapp/contacts/framework/dao/BaseWhereSupport;->b:Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method abstract c(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")TE;"
        }
    .end annotation
.end method
