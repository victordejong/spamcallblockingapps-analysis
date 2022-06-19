.class public Ld2/k0$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld2/y0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld2/k0;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ld2/k0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ld2/t0;)V
    .locals 10

    .line 1
    invoke-static {}, Ld2/r1;->c()Ld2/r1;

    move-result-object v0

    .line 2
    iget-object v1, v0, Ld2/r1;->a:Ld2/o1;

    if-nez v1, :cond_0

    goto/16 :goto_5

    .line 3
    :cond_0
    iget-object p1, p1, Ld2/t0;->b:Ld2/f4;

    if-nez p1, :cond_1

    goto/16 :goto_5

    :cond_1
    const-string v1, "payload"

    .line 4
    invoke-virtual {p1, v1}, Ld2/f4;->m(Ljava/lang/String;)Ld2/f4;

    move-result-object p1

    if-nez p1, :cond_2

    goto/16 :goto_5

    :cond_2
    const-string v1, "request_type"

    .line 5
    invoke-virtual {p1, v1}, Ld2/f4;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6
    iget-object v2, v0, Ld2/r1;->a:Ld2/o1;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v3, :cond_3

    goto :goto_3

    .line 8
    :cond_3
    iget-object v2, v2, Ld2/o1;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ld2/o1$a;

    .line 9
    iget-object v6, v3, Ld2/o1$a;->d:[Ljava/lang/String;

    .line 10
    array-length v7, v6

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v7, :cond_6

    aget-object v9, v6, v8

    .line 11
    invoke-virtual {v1, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    goto :goto_2

    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 12
    :cond_6
    iget-object v6, v3, Ld2/o1$a;->e:[Ljava/lang/String;

    .line 13
    array-length v7, v6

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v7, :cond_4

    aget-object v9, v6, v8

    .line 14
    invoke-virtual {v1, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    :goto_2
    move-object v4, v3

    goto :goto_3

    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_8
    :goto_3
    if-eqz v4, :cond_9

    .line 15
    :try_start_0
    invoke-static {p1, v4}, Ld2/r1;->a(Ld2/f4;Ld2/o1$a;)Landroid/content/ContentValues;

    move-result-object v2

    .line 16
    invoke-static {}, Ld2/d3;->d()Ld2/d3;

    move-result-object v3

    .line 17
    iget-object v6, v4, Ld2/o1$a;->b:Ljava/lang/String;

    .line 18
    invoke-virtual {v3, v6, v2}, Ld2/d3;->b(Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 19
    invoke-static {}, Ld2/d3;->d()Ld2/d3;

    move-result-object v3

    invoke-virtual {v3, v4, v2}, Ld2/d3;->a(Ld2/o1$a;Landroid/content/ContentValues;)V

    .line 20
    iput-boolean v5, v0, Ld2/r1;->d:Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v2

    goto :goto_4

    :catch_1
    move-exception v2

    .line 21
    :goto_4
    invoke-virtual {v2}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 22
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error parsing event:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 24
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {p1}, Ld2/f4;->toString()Ljava/lang/String;

    move-result-object p1

    .line 26
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Schema version: "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Ld2/r1;->a:Ld2/o1;

    .line 28
    iget v0, v0, Ld2/o1;->a:I

    .line 29
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 30
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " e: "

    .line 31
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v2}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object p1

    .line 33
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    .line 35
    invoke-static {v5, v0, p1, v0}, Landroid/support/v4/media/b;->l(IILjava/lang/String;Z)V

    :cond_9
    :goto_5
    return-void
.end method
