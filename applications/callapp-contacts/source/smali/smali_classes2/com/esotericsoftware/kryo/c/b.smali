.class public final Lcom/esotericsoftware/kryo/c/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/esotericsoftware/kryo/a;


# instance fields
.field protected a:Lcom/esotericsoftware/kryo/c;

.field protected final b:Lcom/esotericsoftware/kryo/c/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/esotericsoftware/kryo/c/j<",
            "Lcom/esotericsoftware/kryo/g;",
            ">;"
        }
    .end annotation
.end field

.field protected final c:Lcom/esotericsoftware/kryo/c/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/esotericsoftware/kryo/c/a<",
            "Ljava/lang/Class;",
            "Lcom/esotericsoftware/kryo/g;",
            ">;"
        }
    .end annotation
.end field

.field protected d:Lcom/esotericsoftware/kryo/c/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/esotericsoftware/kryo/c/h<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field protected e:Lcom/esotericsoftware/kryo/c/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/esotericsoftware/kryo/c/j<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field protected f:Lcom/esotericsoftware/kryo/c/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/esotericsoftware/kryo/c/m<",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field protected g:I

.field private h:I

.field private i:Lcom/esotericsoftware/kryo/g;

.field private j:Ljava/lang/Class;

.field private k:Lcom/esotericsoftware/kryo/g;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lcom/esotericsoftware/kryo/c/j;

    invoke-direct {v0}, Lcom/esotericsoftware/kryo/c/j;-><init>()V

    iput-object v0, p0, Lcom/esotericsoftware/kryo/c/b;->b:Lcom/esotericsoftware/kryo/c/j;

    .line 40
    new-instance v0, Lcom/esotericsoftware/kryo/c/a;

    invoke-direct {v0}, Lcom/esotericsoftware/kryo/c/a;-><init>()V

    iput-object v0, p0, Lcom/esotericsoftware/kryo/c/b;->c:Lcom/esotericsoftware/kryo/c/a;

    const/4 v0, -0x1

    .line 47
    iput v0, p0, Lcom/esotericsoftware/kryo/c/b;->h:I

    return-void
.end method

.method private b(Lcom/esotericsoftware/kryo/a/a;)Lcom/esotericsoftware/kryo/g;
    .locals 6

    const/4 v0, 0x1

    .line 167
    invoke-virtual {p1, v0}, Lcom/esotericsoftware/kryo/a/a;->b(Z)I

    move-result v0

    .line 168
    iget-object v1, p0, Lcom/esotericsoftware/kryo/c/b;->e:Lcom/esotericsoftware/kryo/c/j;

    if-nez v1, :cond_0

    new-instance v1, Lcom/esotericsoftware/kryo/c/j;

    invoke-direct {v1}, Lcom/esotericsoftware/kryo/c/j;-><init>()V

    iput-object v1, p0, Lcom/esotericsoftware/kryo/c/b;->e:Lcom/esotericsoftware/kryo/c/j;

    .line 169
    :cond_0
    iget-object v1, p0, Lcom/esotericsoftware/kryo/c/b;->e:Lcom/esotericsoftware/kryo/c/j;

    invoke-virtual {v1, v0}, Lcom/esotericsoftware/kryo/c/j;->b(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    const-string v2, "kryo"

    if-nez v1, :cond_5

    .line 172
    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/a/a;->m()Ljava/lang/String;

    move-result-object v1

    .line 13197
    iget-object v3, p0, Lcom/esotericsoftware/kryo/c/b;->f:Lcom/esotericsoftware/kryo/c/m;

    if-eqz v3, :cond_1

    invoke-virtual {v3, v1}, Lcom/esotericsoftware/kryo/c/m;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-nez v3, :cond_3

    const/4 v3, 0x0

    .line 176
    :try_start_0
    iget-object v4, p0, Lcom/esotericsoftware/kryo/c/b;->a:Lcom/esotericsoftware/kryo/c;

    invoke-virtual {v4}, Lcom/esotericsoftware/kryo/c;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-static {v1, v3, v4}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    .line 180
    :try_start_1
    const-class v5, Lcom/esotericsoftware/kryo/c;

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-static {v1, v3, v5}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 185
    :goto_1
    iget-object v4, p0, Lcom/esotericsoftware/kryo/c/b;->f:Lcom/esotericsoftware/kryo/c/m;

    if-nez v4, :cond_2

    new-instance v4, Lcom/esotericsoftware/kryo/c/m;

    invoke-direct {v4}, Lcom/esotericsoftware/kryo/c/m;-><init>()V

    iput-object v4, p0, Lcom/esotericsoftware/kryo/c/b;->f:Lcom/esotericsoftware/kryo/c/m;

    .line 186
    :cond_2
    iget-object v4, p0, Lcom/esotericsoftware/kryo/c/b;->f:Lcom/esotericsoftware/kryo/c/m;

    invoke-virtual {v4, v1, v3}, Lcom/esotericsoftware/kryo/c/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 182
    :catch_1
    new-instance p1, Lcom/esotericsoftware/kryo/KryoException;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Unable to find class: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, v4}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 188
    :cond_3
    :goto_2
    iget-object v4, p0, Lcom/esotericsoftware/kryo/c/b;->e:Lcom/esotericsoftware/kryo/c/j;

    invoke-virtual {v4, v0, v3}, Lcom/esotericsoftware/kryo/c/j;->a(ILjava/lang/Object;)Ljava/lang/Object;

    .line 189
    sget-boolean v0, Lcom/esotericsoftware/b/a;->e:Z

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "Read class name: "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/a/a;->b()I

    move-result p1

    invoke-static {p1}, Lcom/esotericsoftware/kryo/c/n;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/esotericsoftware/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    move-object v1, v3

    goto :goto_3

    .line 191
    :cond_5
    sget-boolean v3, Lcom/esotericsoftware/b/a;->e:Z

    if-eqz v3, :cond_6

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Read class name reference "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/esotericsoftware/kryo/c/n;->d(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/a/a;->b()I

    move-result p1

    invoke-static {p1}, Lcom/esotericsoftware/kryo/c/n;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/esotericsoftware/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    :cond_6
    :goto_3
    iget-object p1, p0, Lcom/esotericsoftware/kryo/c/b;->a:Lcom/esotericsoftware/kryo/c;

    invoke-virtual {p1, v1}, Lcom/esotericsoftware/kryo/c;->c(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/g;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final a(I)Lcom/esotericsoftware/kryo/g;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/esotericsoftware/kryo/c/b;->b:Lcom/esotericsoftware/kryo/c/j;

    invoke-virtual {v0, p1}, Lcom/esotericsoftware/kryo/c/j;->b(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/esotericsoftware/kryo/g;

    return-object p1
.end method

.method public final a(Lcom/esotericsoftware/kryo/a/a;)Lcom/esotericsoftware/kryo/g;
    .locals 7

    const/4 v0, 0x1

    .line 145
    invoke-virtual {p1, v0}, Lcom/esotericsoftware/kryo/a/a;->b(Z)I

    move-result v1

    if-eqz v1, :cond_5

    if-eq v1, v0, :cond_4

    .line 153
    iget v0, p0, Lcom/esotericsoftware/kryo/c/b;->h:I

    const-string v2, ": "

    const-string v3, "Read class "

    const-string v4, "kryo"

    if-ne v1, v0, :cond_1

    .line 154
    sget-boolean v0, Lcom/esotericsoftware/b/a;->e:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/esotericsoftware/kryo/c/b;->i:Lcom/esotericsoftware/kryo/g;

    .line 12046
    iget-object v1, v1, Lcom/esotericsoftware/kryo/g;->a:Ljava/lang/Class;

    .line 155
    invoke-static {v1}, Lcom/esotericsoftware/kryo/c/n;->d(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/a/a;->b()I

    move-result p1

    invoke-static {p1}, Lcom/esotericsoftware/kryo/c/n;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 154
    invoke-static {v4, p1}, Lcom/esotericsoftware/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    :cond_0
    iget-object p1, p0, Lcom/esotericsoftware/kryo/c/b;->i:Lcom/esotericsoftware/kryo/g;

    return-object p1

    .line 158
    :cond_1
    iget-object v0, p0, Lcom/esotericsoftware/kryo/c/b;->b:Lcom/esotericsoftware/kryo/c/j;

    add-int/lit8 v5, v1, -0x2

    invoke-virtual {v0, v5}, Lcom/esotericsoftware/kryo/c/j;->b(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/esotericsoftware/kryo/g;

    if-eqz v0, :cond_3

    .line 160
    sget-boolean v6, Lcom/esotericsoftware/b/a;->e:Z

    if-eqz v6, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13046
    iget-object v2, v0, Lcom/esotericsoftware/kryo/g;->a:Ljava/lang/Class;

    .line 160
    invoke-static {v2}, Lcom/esotericsoftware/kryo/c/n;->d(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/a/a;->b()I

    move-result p1

    invoke-static {p1}, Lcom/esotericsoftware/kryo/c/n;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/esotericsoftware/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    :cond_2
    iput v1, p0, Lcom/esotericsoftware/kryo/c/b;->h:I

    .line 162
    iput-object v0, p0, Lcom/esotericsoftware/kryo/c/b;->i:Lcom/esotericsoftware/kryo/g;

    return-object v0

    .line 159
    :cond_3
    new-instance p1, Lcom/esotericsoftware/kryo/KryoException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Encountered unregistered class ID: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 151
    :cond_4
    invoke-direct {p0, p1}, Lcom/esotericsoftware/kryo/c/b;->b(Lcom/esotericsoftware/kryo/a/a;)Lcom/esotericsoftware/kryo/g;

    move-result-object p1

    return-object p1

    .line 148
    :cond_5
    sget-boolean v1, Lcom/esotericsoftware/b/a;->e:Z

    const/4 v2, 0x0

    if-nez v1, :cond_6

    sget-boolean v1, Lcom/esotericsoftware/b/a;->d:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/esotericsoftware/kryo/c/b;->a:Lcom/esotericsoftware/kryo/c;

    invoke-virtual {v1}, Lcom/esotericsoftware/kryo/c;->getDepth()I

    move-result v1

    if-ne v1, v0, :cond_7

    :cond_6
    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/a/a;->b()I

    move-result p1

    const-string v0, "Read"

    invoke-static {v0, v2, p1}, Lcom/esotericsoftware/kryo/c/n;->a(Ljava/lang/String;Ljava/lang/Object;I)V

    :cond_7
    return-object v2
.end method

.method public final a(Lcom/esotericsoftware/kryo/a/c;Ljava/lang/Class;)Lcom/esotericsoftware/kryo/g;
    .locals 7

    const/4 v0, 0x1

    if-nez p2, :cond_2

    .line 108
    sget-boolean p2, Lcom/esotericsoftware/b/a;->e:Z

    const/4 v1, 0x0

    if-nez p2, :cond_0

    sget-boolean p2, Lcom/esotericsoftware/b/a;->d:Z

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/esotericsoftware/kryo/c/b;->a:Lcom/esotericsoftware/kryo/c;

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/c;->getDepth()I

    move-result p2

    if-ne p2, v0, :cond_1

    :cond_0
    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/a/c;->b()I

    move-result p2

    const-string v0, "Write"

    invoke-static {v0, v1, p2}, Lcom/esotericsoftware/kryo/c/n;->a(Ljava/lang/String;Ljava/lang/Object;I)V

    :cond_1
    const/4 p2, 0x0

    .line 109
    invoke-virtual {p1, p2}, Lcom/esotericsoftware/kryo/a/c;->a(B)V

    return-object v1

    .line 112
    :cond_2
    iget-object v1, p0, Lcom/esotericsoftware/kryo/c/b;->a:Lcom/esotericsoftware/kryo/c;

    invoke-virtual {v1, p2}, Lcom/esotericsoftware/kryo/c;->c(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/g;

    move-result-object v1

    .line 9056
    iget v2, v1, Lcom/esotericsoftware/kryo/g;->c:I

    const-string v3, ": "

    const-string v4, "kryo"

    const/4 v5, -0x1

    if-ne v2, v5, :cond_8

    .line 9123
    invoke-virtual {p1, v0}, Lcom/esotericsoftware/kryo/a/c;->a(I)V

    .line 9124
    iget-object v2, p0, Lcom/esotericsoftware/kryo/c/b;->d:Lcom/esotericsoftware/kryo/c/h;

    if-eqz v2, :cond_4

    .line 9125
    invoke-virtual {v2, p2, v5}, Lcom/esotericsoftware/kryo/c/h;->b(Ljava/lang/Object;I)I

    move-result v2

    if-eq v2, v5, :cond_4

    .line 9127
    sget-boolean v5, Lcom/esotericsoftware/b/a;->e:Z

    if-eqz v5, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Write class name reference "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/esotericsoftware/kryo/c/n;->d(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/a/c;->b()I

    move-result p2

    invoke-static {p2}, Lcom/esotericsoftware/kryo/c/n;->a(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2}, Lcom/esotericsoftware/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 9128
    :cond_3
    invoke-virtual {p1, v2, v0}, Lcom/esotericsoftware/kryo/a/c;->b(IZ)I

    goto/16 :goto_0

    .line 9133
    :cond_4
    sget-boolean v2, Lcom/esotericsoftware/b/a;->e:Z

    if-eqz v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Write class name: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/esotericsoftware/kryo/c/n;->d(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/a/c;->b()I

    move-result v3

    invoke-static {v3}, Lcom/esotericsoftware/kryo/c/n;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/esotericsoftware/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 9134
    :cond_5
    iget v2, p0, Lcom/esotericsoftware/kryo/c/b;->g:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/esotericsoftware/kryo/c/b;->g:I

    .line 9135
    iget-object v3, p0, Lcom/esotericsoftware/kryo/c/b;->d:Lcom/esotericsoftware/kryo/c/h;

    if-nez v3, :cond_6

    new-instance v3, Lcom/esotericsoftware/kryo/c/h;

    invoke-direct {v3}, Lcom/esotericsoftware/kryo/c/h;-><init>()V

    iput-object v3, p0, Lcom/esotericsoftware/kryo/c/b;->d:Lcom/esotericsoftware/kryo/c/h;

    .line 9136
    :cond_6
    iget-object v3, p0, Lcom/esotericsoftware/kryo/c/b;->d:Lcom/esotericsoftware/kryo/c/h;

    invoke-virtual {v3, p2, v2}, Lcom/esotericsoftware/kryo/c/h;->a(Ljava/lang/Object;I)V

    .line 9137
    invoke-virtual {p1, v2, v0}, Lcom/esotericsoftware/kryo/a/c;->b(IZ)I

    .line 10050
    iget-boolean v0, v1, Lcom/esotericsoftware/kryo/g;->b:Z

    if-eqz v0, :cond_7

    .line 9139
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/esotericsoftware/kryo/a/c;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 9141
    :cond_7
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/esotericsoftware/kryo/a/c;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 116
    :cond_8
    sget-boolean v2, Lcom/esotericsoftware/b/a;->e:Z

    if-eqz v2, :cond_9

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "Write class "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10056
    iget v5, v1, Lcom/esotericsoftware/kryo/g;->c:I

    .line 116
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/esotericsoftware/kryo/c/n;->d(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/a/c;->b()I

    move-result p2

    invoke-static {p2}, Lcom/esotericsoftware/kryo/c/n;->a(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2}, Lcom/esotericsoftware/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 11056
    :cond_9
    iget p2, v1, Lcom/esotericsoftware/kryo/g;->c:I

    add-int/lit8 p2, p2, 0x2

    .line 117
    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/a/c;->b(IZ)I

    :goto_0
    return-object v1
.end method

.method public final a(Lcom/esotericsoftware/kryo/g;)Lcom/esotericsoftware/kryo/g;
    .locals 5

    const/4 v0, -0x1

    .line 57
    iput v0, p0, Lcom/esotericsoftware/kryo/c/b;->h:I

    const/4 v1, 0x0

    .line 58
    iput-object v1, p0, Lcom/esotericsoftware/kryo/c/b;->j:Ljava/lang/Class;

    .line 1056
    iget v1, p1, Lcom/esotericsoftware/kryo/g;->c:I

    const-string v2, ")"

    const-string v3, " ("

    const-string v4, "kryo"

    if-eq v1, v0, :cond_1

    .line 61
    sget-boolean v0, Lcom/esotericsoftware/b/a;->e:Z

    if-eqz v0, :cond_0

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Register class ID "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2056
    iget v1, p1, Lcom/esotericsoftware/kryo/g;->c:I

    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3046
    iget-object v1, p1, Lcom/esotericsoftware/kryo/g;->a:Ljava/lang/Class;

    .line 62
    invoke-static {v1}, Lcom/esotericsoftware/kryo/c/n;->d(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3060
    iget-object v1, p1, Lcom/esotericsoftware/kryo/g;->d:Lcom/esotericsoftware/kryo/h;

    .line 63
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 62
    invoke-static {v4, v0}, Lcom/esotericsoftware/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/esotericsoftware/kryo/c/b;->b:Lcom/esotericsoftware/kryo/c/j;

    .line 4056
    iget v1, p1, Lcom/esotericsoftware/kryo/g;->c:I

    .line 65
    invoke-virtual {v0, v1, p1}, Lcom/esotericsoftware/kryo/c/j;->a(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 66
    :cond_1
    sget-boolean v0, Lcom/esotericsoftware/b/a;->e:Z

    if-eqz v0, :cond_2

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Register class name: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 5046
    iget-object v1, p1, Lcom/esotericsoftware/kryo/g;->a:Ljava/lang/Class;

    .line 67
    invoke-static {v1}, Lcom/esotericsoftware/kryo/c/n;->d(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5060
    iget-object v1, p1, Lcom/esotericsoftware/kryo/g;->d:Lcom/esotericsoftware/kryo/h;

    .line 68
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 67
    invoke-static {v4, v0}, Lcom/esotericsoftware/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/esotericsoftware/kryo/c/b;->c:Lcom/esotericsoftware/kryo/c/a;

    .line 6046
    iget-object v1, p1, Lcom/esotericsoftware/kryo/g;->a:Ljava/lang/Class;

    .line 70
    invoke-virtual {v0, v1, p1}, Lcom/esotericsoftware/kryo/c/a;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7046
    iget-object v0, p1, Lcom/esotericsoftware/kryo/g;->a:Ljava/lang/Class;

    .line 71
    invoke-static {v0}, Lcom/esotericsoftware/kryo/c/n;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 8046
    iget-object v1, p1, Lcom/esotericsoftware/kryo/g;->a:Ljava/lang/Class;

    if-eq v0, v1, :cond_3

    .line 72
    iget-object v1, p0, Lcom/esotericsoftware/kryo/c/b;->c:Lcom/esotericsoftware/kryo/c/a;

    invoke-virtual {v1, v0, p1}, Lcom/esotericsoftware/kryo/c/a;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-object p1
.end method

.method public final a(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/g;
    .locals 3

    .line 89
    new-instance v0, Lcom/esotericsoftware/kryo/g;

    iget-object v1, p0, Lcom/esotericsoftware/kryo/c/b;->a:Lcom/esotericsoftware/kryo/c;

    invoke-virtual {v1, p1}, Lcom/esotericsoftware/kryo/c;->b(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/h;

    move-result-object v1

    const/4 v2, -0x1

    invoke-direct {v0, p1, v1, v2}, Lcom/esotericsoftware/kryo/g;-><init>(Ljava/lang/Class;Lcom/esotericsoftware/kryo/h;I)V

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/c/b;->a(Lcom/esotericsoftware/kryo/g;)Lcom/esotericsoftware/kryo/g;

    move-result-object p1

    return-object p1
.end method

.method public final a()V
    .locals 4

    .line 201
    iget-object v0, p0, Lcom/esotericsoftware/kryo/c/b;->a:Lcom/esotericsoftware/kryo/c;

    invoke-virtual {v0}, Lcom/esotericsoftware/kryo/c;->isRegistrationRequired()Z

    move-result v0

    if-nez v0, :cond_2

    .line 202
    iget-object v0, p0, Lcom/esotericsoftware/kryo/c/b;->d:Lcom/esotericsoftware/kryo/c/h;

    if-eqz v0, :cond_0

    const/16 v1, 0x800

    invoke-virtual {v0, v1}, Lcom/esotericsoftware/kryo/c/h;->a(I)V

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/esotericsoftware/kryo/c/b;->e:Lcom/esotericsoftware/kryo/c/j;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 13264
    iget v2, v0, Lcom/esotericsoftware/kryo/c/j;->a:I

    if-eqz v2, :cond_1

    .line 13265
    iput v1, v0, Lcom/esotericsoftware/kryo/c/j;->a:I

    .line 13266
    iget-object v2, v0, Lcom/esotericsoftware/kryo/c/j;->b:[I

    invoke-static {v2, v1}, Ljava/util/Arrays;->fill([II)V

    .line 13267
    iget-object v2, v0, Lcom/esotericsoftware/kryo/c/j;->c:[Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 13268
    iput-object v3, v0, Lcom/esotericsoftware/kryo/c/j;->d:Ljava/lang/Object;

    .line 13269
    iput-boolean v1, v0, Lcom/esotericsoftware/kryo/c/j;->e:Z

    .line 204
    :cond_1
    iput v1, p0, Lcom/esotericsoftware/kryo/c/b;->g:I

    :cond_2
    return-void
.end method

.method public final a(Lcom/esotericsoftware/kryo/c;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/esotericsoftware/kryo/c/b;->a:Lcom/esotericsoftware/kryo/c;

    return-void
.end method

.method public final b(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/g;
    .locals 4

    .line 93
    iget-object v0, p0, Lcom/esotericsoftware/kryo/c/b;->j:Ljava/lang/Class;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/esotericsoftware/kryo/c/b;->k:Lcom/esotericsoftware/kryo/g;

    return-object p1

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/esotericsoftware/kryo/c/b;->c:Lcom/esotericsoftware/kryo/c/a;

    .line 8351
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 8352
    iget v2, v0, Lcom/esotericsoftware/kryo/c/a;->g:I

    and-int/2addr v2, v1

    .line 8353
    iget-object v3, v0, Lcom/esotericsoftware/kryo/c/a;->c:[Ljava/lang/Object;

    aget-object v3, v3, v2

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 8354
    invoke-virtual {v0, v1}, Lcom/esotericsoftware/kryo/c/a;->a(I)I

    move-result v2

    .line 8355
    iget-object v3, v0, Lcom/esotericsoftware/kryo/c/a;->c:[Ljava/lang/Object;

    aget-object v3, v3, v2

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 8356
    invoke-virtual {v0, v1}, Lcom/esotericsoftware/kryo/c/a;->b(I)I

    move-result v2

    .line 8357
    iget-object v3, v0, Lcom/esotericsoftware/kryo/c/a;->c:[Ljava/lang/Object;

    aget-object v3, v3, v2

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 8358
    iget-boolean v2, v0, Lcom/esotericsoftware/kryo/c/a;->h:Z

    if-eqz v2, :cond_1

    .line 8359
    invoke-virtual {v0, v1}, Lcom/esotericsoftware/kryo/c/a;->c(I)I

    move-result v2

    .line 8360
    iget-object v1, v0, Lcom/esotericsoftware/kryo/c/a;->c:[Ljava/lang/Object;

    aget-object v1, v1, v2

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0, p1}, Lcom/esotericsoftware/kryo/c/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 8362
    :cond_1
    invoke-virtual {v0, p1}, Lcom/esotericsoftware/kryo/c/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 8367
    :cond_2
    iget-object v0, v0, Lcom/esotericsoftware/kryo/c/a;->d:[Ljava/lang/Object;

    aget-object v0, v0, v2

    .line 94
    :goto_0
    check-cast v0, Lcom/esotericsoftware/kryo/g;

    if-eqz v0, :cond_3

    .line 96
    iput-object p1, p0, Lcom/esotericsoftware/kryo/c/b;->j:Ljava/lang/Class;

    .line 97
    iput-object v0, p0, Lcom/esotericsoftware/kryo/c/b;->k:Lcom/esotericsoftware/kryo/g;

    :cond_3
    return-object v0
.end method
