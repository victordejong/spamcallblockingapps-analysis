.class public final Lkotlin/reflect/jvm/internal/v;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a \u0010\u0005\u001a\u0006\u0012\u0002\u0008\u00030\u0006*\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u00022\u0006\u0010\u0007\u001a\u00020\u0008H\u0002\u001a\u000c\u0010\t\u001a\u00020\u0008*\u00020\nH\u0002\"\"\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u00028@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u000b"
    }
    d2 = {
        "boundReceiver",
        "",
        "Lkotlin/reflect/jvm/internal/KPropertyImpl$Accessor;",
        "getBoundReceiver",
        "(Lkotlin/reflect/jvm/internal/KPropertyImpl$Accessor;)Ljava/lang/Object;",
        "computeCallerForAccessor",
        "Lkotlin/reflect/jvm/internal/calls/Caller;",
        "isGetter",
        "",
        "isJvmFieldPropertyInCompanionObject",
        "Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;",
        "kotlin-reflection"
    }
    k = 0x2
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# direct methods
.method public static final a(Lkotlin/reflect/jvm/internal/u$a;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/u$a<",
            "**>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "$this$boundReceiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/u$a;->a()Lkotlin/reflect/jvm/internal/u;

    move-result-object p0

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/u;->i()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static final a(Lkotlin/reflect/jvm/internal/u$a;Z)Lkotlin/reflect/jvm/internal/a/d;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/u$a<",
            "**>;Z)",
            "Lkotlin/reflect/jvm/internal/a/d<",
            "*>;"
        }
    .end annotation

    .line 182
    sget-object v0, Lkotlin/reflect/jvm/internal/k;->d:Lkotlin/reflect/jvm/internal/k$a;

    .line 3287
    invoke-static {}, Lkotlin/reflect/jvm/internal/k;->j()Lkotlin/h/l;

    move-result-object v0

    .line 182
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/u$a;->a()Lkotlin/reflect/jvm/internal/u;

    move-result-object v1

    .line 4030
    iget-object v1, v1, Lkotlin/reflect/jvm/internal/u;->c:Ljava/lang/String;

    .line 182
    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lkotlin/h/l;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    sget-object p0, Lkotlin/reflect/jvm/internal/a/j;->a:Lkotlin/reflect/jvm/internal/a/j;

    check-cast p0, Lkotlin/reflect/jvm/internal/a/d;

    return-object p0

    .line 186
    :cond_0
    new-instance v0, Lkotlin/reflect/jvm/internal/v$a;

    invoke-direct {v0, p0}, Lkotlin/reflect/jvm/internal/v$a;-><init>(Lkotlin/reflect/jvm/internal/u$a;)V

    .line 189
    new-instance v1, Lkotlin/reflect/jvm/internal/v$b;

    invoke-direct {v1, p0}, Lkotlin/reflect/jvm/internal/v$b;-><init>(Lkotlin/reflect/jvm/internal/u$a;)V

    .line 192
    new-instance v2, Lkotlin/reflect/jvm/internal/v$c;

    invoke-direct {v2, p0, p1, v1, v0}, Lkotlin/reflect/jvm/internal/v$c;-><init>(Lkotlin/reflect/jvm/internal/u$a;ZLkotlin/reflect/jvm/internal/v$b;Lkotlin/reflect/jvm/internal/v$a;)V

    .line 212
    sget-object v1, Lkotlin/reflect/jvm/internal/ah;->b:Lkotlin/reflect/jvm/internal/ah;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/u$a;->a()Lkotlin/reflect/jvm/internal/u;

    move-result-object v3

    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/u;->l()Lkotlin/reflect/jvm/internal/impl/descriptors/an;

    move-result-object v3

    invoke-virtual {v1, v3}, Lkotlin/reflect/jvm/internal/ah;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/an;)Lkotlin/reflect/jvm/internal/e;

    move-result-object v1

    .line 214
    instance-of v3, v1, Lkotlin/reflect/jvm/internal/e$c;

    if-eqz v3, :cond_e

    .line 215
    check-cast v1, Lkotlin/reflect/jvm/internal/e$c;

    .line 4103
    iget-object v3, v1, Lkotlin/reflect/jvm/internal/e$c;->c:Lkotlin/reflect/jvm/internal/impl/b/c/a$c;

    const/4 v4, 0x0

    if-eqz p1, :cond_1

    .line 217
    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/b/c/a$c;->g()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 4258
    iget-object p1, v3, Lkotlin/reflect/jvm/internal/impl/b/c/a$c;->d:Lkotlin/reflect/jvm/internal/impl/b/c/a$b;

    goto :goto_0

    .line 218
    :cond_1
    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/b/c/a$c;->k()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 4273
    iget-object p1, v3, Lkotlin/reflect/jvm/internal/impl/b/c/a$c;->e:Lkotlin/reflect/jvm/internal/impl/b/c/a$b;

    goto :goto_0

    :cond_2
    move-object p1, v4

    :goto_0
    if-eqz p1, :cond_3

    .line 223
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/u$a;->a()Lkotlin/reflect/jvm/internal/u;

    move-result-object v3

    .line 5028
    iget-object v3, v3, Lkotlin/reflect/jvm/internal/u;->b:Lkotlin/reflect/jvm/internal/k;

    .line 5104
    iget-object v4, v1, Lkotlin/reflect/jvm/internal/e$c;->d:Lkotlin/reflect/jvm/internal/impl/b/b/c;

    .line 5236
    iget v5, p1, Lkotlin/reflect/jvm/internal/impl/b/c/a$b;->b:I

    .line 224
    invoke-interface {v4, v5}, Lkotlin/reflect/jvm/internal/impl/b/b/c;->a(I)Ljava/lang/String;

    move-result-object v4

    .line 6104
    iget-object v1, v1, Lkotlin/reflect/jvm/internal/e$c;->d:Lkotlin/reflect/jvm/internal/impl/b/b/c;

    .line 6259
    iget p1, p1, Lkotlin/reflect/jvm/internal/impl/b/c/a$b;->c:I

    .line 225
    invoke-interface {v1, p1}, Lkotlin/reflect/jvm/internal/impl/b/b/c;->a(I)Ljava/lang/String;

    move-result-object p1

    .line 223
    invoke-virtual {v3, v4, p1}, Lkotlin/reflect/jvm/internal/k;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v4

    :cond_3
    if-nez v4, :cond_8

    .line 231
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/u$a;->a()Lkotlin/reflect/jvm/internal/u;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/u;->l()Lkotlin/reflect/jvm/internal/impl/descriptors/an;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/bc;

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/resolve/e;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/bc;)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/u$a;->a()Lkotlin/reflect/jvm/internal/u;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/u;->l()Lkotlin/reflect/jvm/internal/impl/descriptors/an;

    move-result-object p1

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/an;->getVisibility()Lkotlin/reflect/jvm/internal/impl/descriptors/s;

    move-result-object p1

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/r;->d:Lkotlin/reflect/jvm/internal/impl/descriptors/s;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 234
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/u$a;->a()Lkotlin/reflect/jvm/internal/u;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/u;->l()Lkotlin/reflect/jvm/internal/impl/descriptors/an;

    move-result-object p1

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/an;->getContainingDeclaration()Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    move-result-object p1

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/a/h;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/k;)Ljava/lang/Class;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/u$a;->a()Lkotlin/reflect/jvm/internal/u;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/u;->l()Lkotlin/reflect/jvm/internal/impl/descriptors/an;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/b;

    invoke-static {p1, v0}, Lkotlin/reflect/jvm/internal/a/h;->a(Ljava/lang/Class;Lkotlin/reflect/jvm/internal/impl/descriptors/b;)Ljava/lang/reflect/Method;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 7138
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/u$a;->a()Lkotlin/reflect/jvm/internal/u;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/u;->f()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 236
    new-instance v0, Lkotlin/reflect/jvm/internal/a/i$a;

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/v;->a(Lkotlin/reflect/jvm/internal/u$a;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lkotlin/reflect/jvm/internal/a/i$a;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Object;)V

    check-cast v0, Lkotlin/reflect/jvm/internal/a/i;

    goto :goto_1

    .line 237
    :cond_4
    new-instance v0, Lkotlin/reflect/jvm/internal/a/i$b;

    invoke-direct {v0, p1}, Lkotlin/reflect/jvm/internal/a/i$b;-><init>(Ljava/lang/reflect/Method;)V

    check-cast v0, Lkotlin/reflect/jvm/internal/a/i;

    .line 236
    :goto_1
    check-cast v0, Lkotlin/reflect/jvm/internal/a/d;

    goto/16 :goto_7

    .line 235
    :cond_5
    new-instance p1, Lkotlin/reflect/jvm/internal/ab;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Underlying property of inline class "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/u$a;->a()Lkotlin/reflect/jvm/internal/u;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " should have a field"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lkotlin/reflect/jvm/internal/ab;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 239
    :cond_6
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/u$a;->a()Lkotlin/reflect/jvm/internal/u;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/u;->j()Ljava/lang/reflect/Field;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 241
    invoke-virtual {v2, p1}, Lkotlin/reflect/jvm/internal/v$c;->a(Ljava/lang/reflect/Field;)Lkotlin/reflect/jvm/internal/a/e;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lkotlin/reflect/jvm/internal/a/d;

    goto/16 :goto_7

    .line 240
    :cond_7
    new-instance p1, Lkotlin/reflect/jvm/internal/ab;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "No accessors or field is found for property "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/u$a;->a()Lkotlin/reflect/jvm/internal/u;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lkotlin/reflect/jvm/internal/ab;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 244
    :cond_8
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result p1

    invoke-static {p1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result p1

    if-nez p1, :cond_a

    .line 8138
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/u$a;->a()Lkotlin/reflect/jvm/internal/u;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/u;->f()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 245
    new-instance p1, Lkotlin/reflect/jvm/internal/a/e$h$a;

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/v;->a(Lkotlin/reflect/jvm/internal/u$a;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p1, v4, v0}, Lkotlin/reflect/jvm/internal/a/e$h$a;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Object;)V

    check-cast p1, Lkotlin/reflect/jvm/internal/a/e$h;

    goto :goto_2

    .line 246
    :cond_9
    new-instance p1, Lkotlin/reflect/jvm/internal/a/e$h$d;

    invoke-direct {p1, v4}, Lkotlin/reflect/jvm/internal/a/e$h$d;-><init>(Ljava/lang/reflect/Method;)V

    check-cast p1, Lkotlin/reflect/jvm/internal/a/e$h;

    .line 245
    :goto_2
    move-object v0, p1

    check-cast v0, Lkotlin/reflect/jvm/internal/a/d;

    goto/16 :goto_7

    .line 247
    :cond_a
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/v$a;->a()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 9138
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/u$a;->a()Lkotlin/reflect/jvm/internal/u;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/u;->f()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 248
    new-instance p1, Lkotlin/reflect/jvm/internal/a/e$h$b;

    invoke-direct {p1, v4}, Lkotlin/reflect/jvm/internal/a/e$h$b;-><init>(Ljava/lang/reflect/Method;)V

    check-cast p1, Lkotlin/reflect/jvm/internal/a/e$h;

    goto :goto_3

    .line 249
    :cond_b
    new-instance p1, Lkotlin/reflect/jvm/internal/a/e$h$e;

    invoke-direct {p1, v4}, Lkotlin/reflect/jvm/internal/a/e$h$e;-><init>(Ljava/lang/reflect/Method;)V

    check-cast p1, Lkotlin/reflect/jvm/internal/a/e$h;

    .line 248
    :goto_3
    move-object v0, p1

    check-cast v0, Lkotlin/reflect/jvm/internal/a/d;

    goto :goto_7

    .line 10138
    :cond_c
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/u$a;->a()Lkotlin/reflect/jvm/internal/u;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/u;->f()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 251
    new-instance p1, Lkotlin/reflect/jvm/internal/a/e$h$c;

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/v;->a(Lkotlin/reflect/jvm/internal/u$a;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p1, v4, v0}, Lkotlin/reflect/jvm/internal/a/e$h$c;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Object;)V

    check-cast p1, Lkotlin/reflect/jvm/internal/a/e$h;

    goto :goto_4

    .line 252
    :cond_d
    new-instance p1, Lkotlin/reflect/jvm/internal/a/e$h$f;

    invoke-direct {p1, v4}, Lkotlin/reflect/jvm/internal/a/e$h$f;-><init>(Ljava/lang/reflect/Method;)V

    check-cast p1, Lkotlin/reflect/jvm/internal/a/e$h;

    .line 251
    :goto_4
    move-object v0, p1

    check-cast v0, Lkotlin/reflect/jvm/internal/a/d;

    goto :goto_7

    .line 255
    :cond_e
    instance-of v0, v1, Lkotlin/reflect/jvm/internal/e$a;

    if-eqz v0, :cond_f

    .line 256
    check-cast v1, Lkotlin/reflect/jvm/internal/e$a;

    .line 10141
    iget-object p1, v1, Lkotlin/reflect/jvm/internal/e$a;->a:Ljava/lang/reflect/Field;

    .line 256
    invoke-virtual {v2, p1}, Lkotlin/reflect/jvm/internal/v$c;->a(Ljava/lang/reflect/Field;)Lkotlin/reflect/jvm/internal/a/e;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lkotlin/reflect/jvm/internal/a/d;

    goto :goto_7

    .line 258
    :cond_f
    instance-of v0, v1, Lkotlin/reflect/jvm/internal/e$b;

    if-eqz v0, :cond_13

    if-eqz p1, :cond_10

    .line 260
    check-cast v1, Lkotlin/reflect/jvm/internal/e$b;

    .line 11137
    iget-object p1, v1, Lkotlin/reflect/jvm/internal/e$b;->a:Ljava/lang/reflect/Method;

    goto :goto_5

    .line 261
    :cond_10
    check-cast v1, Lkotlin/reflect/jvm/internal/e$b;

    .line 12137
    iget-object p1, v1, Lkotlin/reflect/jvm/internal/e$b;->b:Ljava/lang/reflect/Method;

    if-eqz p1, :cond_12

    .line 13138
    :goto_5
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/u$a;->a()Lkotlin/reflect/jvm/internal/u;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/u;->f()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 264
    new-instance v0, Lkotlin/reflect/jvm/internal/a/e$h$a;

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/v;->a(Lkotlin/reflect/jvm/internal/u$a;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lkotlin/reflect/jvm/internal/a/e$h$a;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Object;)V

    check-cast v0, Lkotlin/reflect/jvm/internal/a/e$h;

    goto :goto_6

    .line 265
    :cond_11
    new-instance v0, Lkotlin/reflect/jvm/internal/a/e$h$d;

    invoke-direct {v0, p1}, Lkotlin/reflect/jvm/internal/a/e$h$d;-><init>(Ljava/lang/reflect/Method;)V

    check-cast v0, Lkotlin/reflect/jvm/internal/a/e$h;

    .line 264
    :goto_6
    check-cast v0, Lkotlin/reflect/jvm/internal/a/d;

    .line 279
    :goto_7
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/u$a;->h()Lkotlin/reflect/jvm/internal/impl/descriptors/am;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/b;

    invoke-static {v0, p0}, Lkotlin/reflect/jvm/internal/a/h;->a(Lkotlin/reflect/jvm/internal/a/d;Lkotlin/reflect/jvm/internal/impl/descriptors/b;)Lkotlin/reflect/jvm/internal/a/d;

    move-result-object p0

    return-object p0

    .line 261
    :cond_12
    new-instance p0, Lkotlin/reflect/jvm/internal/ab;

    .line 262
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "No source found for setter of Java method property: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13137
    iget-object v0, v1, Lkotlin/reflect/jvm/internal/e$b;->a:Ljava/lang/reflect/Method;

    .line 262
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 261
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/ab;-><init>(Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Throwable;

    throw p0

    .line 267
    :cond_13
    instance-of v0, v1, Lkotlin/reflect/jvm/internal/e$d;

    if-eqz v0, :cond_1a

    if-eqz p1, :cond_14

    .line 269
    check-cast v1, Lkotlin/reflect/jvm/internal/e$d;

    .line 13147
    iget-object p1, v1, Lkotlin/reflect/jvm/internal/e$d;->a:Lkotlin/reflect/jvm/internal/d$e;

    goto :goto_8

    .line 270
    :cond_14
    check-cast v1, Lkotlin/reflect/jvm/internal/e$d;

    .line 13148
    iget-object p1, v1, Lkotlin/reflect/jvm/internal/e$d;->b:Lkotlin/reflect/jvm/internal/d$e;

    if-eqz p1, :cond_19

    .line 272
    :goto_8
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/u$a;->a()Lkotlin/reflect/jvm/internal/u;

    move-result-object v0

    .line 14028
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/u;->b:Lkotlin/reflect/jvm/internal/k;

    .line 14061
    iget-object v1, p1, Lkotlin/reflect/jvm/internal/d$e;->b:Lkotlin/reflect/jvm/internal/impl/b/c/a/e$b;

    .line 15019
    iget-object v1, v1, Lkotlin/reflect/jvm/internal/impl/b/c/a/e$b;->a:Ljava/lang/String;

    .line 15062
    iget-object p1, p1, Lkotlin/reflect/jvm/internal/d$e;->b:Lkotlin/reflect/jvm/internal/impl/b/c/a/e$b;

    .line 16019
    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/b/c/a/e$b;->b:Ljava/lang/String;

    .line 272
    invoke-virtual {v0, v1, p1}, Lkotlin/reflect/jvm/internal/k;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object p1

    if-eqz p1, :cond_18

    .line 274
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sget-boolean v1, Lkotlin/x;->a:Z

    if-eqz v1, :cond_16

    if-eqz v0, :cond_15

    goto :goto_9

    :cond_15
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Mapped property cannot have a static accessor: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/u$a;->a()Lkotlin/reflect/jvm/internal/u;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 16138
    :cond_16
    :goto_9
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/u$a;->a()Lkotlin/reflect/jvm/internal/u;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/u;->f()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 276
    new-instance v0, Lkotlin/reflect/jvm/internal/a/e$h$a;

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/v;->a(Lkotlin/reflect/jvm/internal/u$a;)Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, p1, p0}, Lkotlin/reflect/jvm/internal/a/e$h$a;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Object;)V

    check-cast v0, Lkotlin/reflect/jvm/internal/a/d;

    return-object v0

    .line 277
    :cond_17
    new-instance p0, Lkotlin/reflect/jvm/internal/a/e$h$d;

    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/a/e$h$d;-><init>(Ljava/lang/reflect/Method;)V

    check-cast p0, Lkotlin/reflect/jvm/internal/a/d;

    return-object p0

    .line 273
    :cond_18
    new-instance p1, Lkotlin/reflect/jvm/internal/ab;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "No accessor found for property "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/u$a;->a()Lkotlin/reflect/jvm/internal/u;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lkotlin/reflect/jvm/internal/ab;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 270
    :cond_19
    new-instance p1, Lkotlin/reflect/jvm/internal/ab;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "No setter found for property "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/u$a;->a()Lkotlin/reflect/jvm/internal/u;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lkotlin/reflect/jvm/internal/ab;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 276
    :cond_1a
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method

.method public static final synthetic a(Lkotlin/reflect/jvm/internal/impl/descriptors/an;)Z
    .locals 3

    .line 16283
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/an;->getContainingDeclaration()Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    move-result-object v0

    const-string v1, "containingDeclaration"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16284
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/d;->g(Lkotlin/reflect/jvm/internal/impl/descriptors/k;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 16286
    :cond_0
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/k;->getContainingDeclaration()Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    move-result-object v0

    .line 16288
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/d;->l(Lkotlin/reflect/jvm/internal/impl/descriptors/k;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/d;->k(Lkotlin/reflect/jvm/internal/impl/descriptors/k;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 16289
    :cond_1
    instance-of v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/j;

    if-eqz v0, :cond_3

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/j;

    .line 17127
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/j;->g:Lkotlin/reflect/jvm/internal/impl/b/a$m;

    .line 16289
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/b/c/a/h;->a(Lkotlin/reflect/jvm/internal/impl/b/a$m;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_0
    return v2
.end method
