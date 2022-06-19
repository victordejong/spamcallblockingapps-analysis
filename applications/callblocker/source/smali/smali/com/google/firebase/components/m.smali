.class Lcom/google/firebase/components/m;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-components@@16.0.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/components/m$a;,
        Lcom/google/firebase/components/m$b;
    }
.end annotation


# direct methods
.method private static a(Ljava/util/Set;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/google/firebase/components/m$a;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Lcom/google/firebase/components/m$a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 182
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 183
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/components/m$a;

    .line 184
    invoke-virtual {v0}, Lcom/google/firebase/components/m$a;->c()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 185
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 188
    :cond_1
    return-object v1
.end method

.method static a(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/firebase/components/b",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 100
    invoke-static {p0}, Lcom/google/firebase/components/m;->b(Ljava/util/List;)Ljava/util/Set;

    move-result-object v3

    .line 101
    invoke-static {v3}, Lcom/google/firebase/components/m;->a(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v4

    .line 103
    const/4 v0, 0x0

    move v1, v0

    .line 104
    :goto_0
    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 105
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/components/m$a;

    .line 106
    invoke-interface {v4, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 107
    add-int/lit8 v2, v1, 0x1

    .line 109
    invoke-virtual {v0}, Lcom/google/firebase/components/m$a;->a()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/components/m$a;

    .line 110
    invoke-virtual {v1, v0}, Lcom/google/firebase/components/m$a;->c(Lcom/google/firebase/components/m$a;)V

    .line 111
    invoke-virtual {v1}, Lcom/google/firebase/components/m$a;->c()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 112
    invoke-interface {v4, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    move v1, v2

    .line 115
    goto :goto_0

    .line 119
    :cond_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v1, v0, :cond_3

    .line 120
    return-void

    .line 124
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 125
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/components/m$a;

    .line 126
    invoke-virtual {v0}, Lcom/google/firebase/components/m$a;->c()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v0}, Lcom/google/firebase/components/m$a;->d()Z

    move-result v3

    if-nez v3, :cond_4

    .line 127
    invoke-virtual {v0}, Lcom/google/firebase/components/m$a;->b()Lcom/google/firebase/components/b;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 131
    :cond_5
    new-instance v0, Lcom/google/firebase/components/DependencyCycleException;

    invoke-direct {v0, v1}, Lcom/google/firebase/components/DependencyCycleException;-><init>(Ljava/util/List;)V

    throw v0
.end method

.method private static b(Ljava/util/List;)Ljava/util/Set;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/firebase/components/b",
            "<*>;>;)",
            "Ljava/util/Set",
            "<",
            "Lcom/google/firebase/components/m$a;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 135
    new-instance v5, Ljava/util/HashMap;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v5, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 136
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/components/b;

    .line 137
    new-instance v7, Lcom/google/firebase/components/m$a;

    invoke-direct {v7, v0}, Lcom/google/firebase/components/m$a;-><init>(Lcom/google/firebase/components/b;)V

    .line 138
    invoke-virtual {v0}, Lcom/google/firebase/components/b;->a()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 139
    new-instance v9, Lcom/google/firebase/components/m$b;

    invoke-virtual {v0}, Lcom/google/firebase/components/b;->g()Z

    move-result v2

    if-nez v2, :cond_2

    move v2, v3

    :goto_1
    invoke-direct {v9, v1, v2, v11}, Lcom/google/firebase/components/m$b;-><init>(Ljava/lang/Class;ZLcom/google/firebase/components/m$1;)V

    .line 140
    invoke-interface {v5, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 141
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v5, v9, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    :cond_1
    invoke-interface {v5, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 144
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_3

    invoke-static {v9}, Lcom/google/firebase/components/m$b;->a(Lcom/google/firebase/components/m$b;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 145
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Multiple components provide %s."

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v4

    .line 146
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move v2, v4

    .line 139
    goto :goto_1

    .line 148
    :cond_3
    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 152
    :cond_4
    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 153
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/components/m$a;

    .line 154
    invoke-virtual {v0}, Lcom/google/firebase/components/m$a;->b()Lcom/google/firebase/components/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/components/b;->b()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/components/n;

    .line 155
    invoke-virtual {v1}, Lcom/google/firebase/components/n;->d()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 159
    new-instance v6, Lcom/google/firebase/components/m$b;

    .line 160
    invoke-virtual {v1}, Lcom/google/firebase/components/n;->a()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v1}, Lcom/google/firebase/components/n;->c()Z

    move-result v1

    invoke-direct {v6, v7, v1, v11}, Lcom/google/firebase/components/m$b;-><init>(Ljava/lang/Class;ZLcom/google/firebase/components/m$1;)V

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 161
    if-eqz v1, :cond_7

    .line 164
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/components/m$a;

    .line 165
    invoke-virtual {v0, v1}, Lcom/google/firebase/components/m$a;->a(Lcom/google/firebase/components/m$a;)V

    .line 166
    invoke-virtual {v1, v0}, Lcom/google/firebase/components/m$a;->b(Lcom/google/firebase/components/m$a;)V

    goto :goto_2

    .line 172
    :cond_8
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 173
    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 174
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    goto :goto_3

    .line 177
    :cond_9
    return-object v1
.end method
