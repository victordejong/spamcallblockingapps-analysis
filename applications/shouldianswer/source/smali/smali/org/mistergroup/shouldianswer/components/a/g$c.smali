.class final Lorg/mistergroup/shouldianswer/components/a/g$c;
.super Lkotlin/c/b/a/k;
.source "ContactsLiveData.kt"

# interfaces
.implements Lkotlin/e/a/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/components/a/g;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/c/b/a/k;",
        "Lkotlin/e/a/m<",
        "Lkotlinx/coroutines/ad;",
        "Lkotlin/c/c<",
        "-",
        "Lkotlin/o;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/c/b/a/f;
    b = "ContactsLiveData.kt"
    c = {
        0x44
    }
    d = "invokeSuspend"
    e = "org.mistergroup.shouldianswer.components.contacts.ContactsLiveData$update$1"
.end annotation


# instance fields
.field a:Ljava/lang/Object;

.field b:Ljava/lang/Object;

.field c:J

.field d:I

.field private e:Lkotlinx/coroutines/ad;


# direct methods
.method constructor <init>(Lkotlin/c/c;)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lkotlin/c/b/a/k;-><init>(ILkotlin/c/c;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/c/c;

    invoke-virtual {p0, p1, p2}, Lorg/mistergroup/shouldianswer/components/a/g$c;->a(Ljava/lang/Object;Lkotlin/c/c;)Lkotlin/c/c;

    move-result-object p1

    check-cast p1, Lorg/mistergroup/shouldianswer/components/a/g$c;

    sget-object p2, Lkotlin/o;->a:Lkotlin/o;

    invoke-virtual {p1, p2}, Lorg/mistergroup/shouldianswer/components/a/g$c;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/Object;Lkotlin/c/c;)Lkotlin/c/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/c/c<",
            "*>;)",
            "Lkotlin/c/c<",
            "Lkotlin/o;",
            ">;"
        }
    .end annotation

    const-string v0, "completion"

    invoke-static {p2, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lorg/mistergroup/shouldianswer/components/a/g$c;

    invoke-direct {v0, p2}, Lorg/mistergroup/shouldianswer/components/a/g$c;-><init>(Lkotlin/c/c;)V

    check-cast p1, Lkotlinx/coroutines/ad;

    iput-object p1, v0, Lorg/mistergroup/shouldianswer/components/a/g$c;->e:Lkotlinx/coroutines/ad;

    return-object v0
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    invoke-static {}, Lkotlin/c/a/b;->a()Ljava/lang/Object;

    move-result-object v0

    .line 58
    iget v1, p0, Lorg/mistergroup/shouldianswer/components/a/g$c;->d:I

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lorg/mistergroup/shouldianswer/components/a/g$c;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    iget-wide v0, p0, Lorg/mistergroup/shouldianswer/components/a/g$c;->c:J

    iget-object v2, p0, Lorg/mistergroup/shouldianswer/components/a/g$c;->a:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/ad;

    :try_start_0
    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    .line 75
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 58
    :cond_1
    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/mistergroup/shouldianswer/components/a/g$c;->e:Lkotlinx/coroutines/ad;

    .line 59
    sget-object v1, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v5, "ContactsLiveData.readContacts.begin"

    invoke-static {v1, v5, v4, v3, v4}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 60
    sget-object v1, Lorg/mistergroup/shouldianswer/utils/u;->a:Lorg/mistergroup/shouldianswer/utils/u;

    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/utils/u;->a()J

    move-result-wide v5

    .line 62
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    .line 63
    sget-object v7, Lorg/mistergroup/shouldianswer/model/ad;->a:Lorg/mistergroup/shouldianswer/model/ad;

    invoke-virtual {v7}, Lorg/mistergroup/shouldianswer/model/ad;->b()Lorg/mistergroup/shouldianswer/utils/h;

    move-result-object v7

    invoke-virtual {v7}, Lorg/mistergroup/shouldianswer/utils/h;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/mistergroup/shouldianswer/model/ac;

    .line 64
    new-instance v9, Lorg/mistergroup/shouldianswer/components/a/a;

    sget-object v10, Lorg/mistergroup/shouldianswer/components/a/a$a;->a:Lorg/mistergroup/shouldianswer/components/a/a$a;

    invoke-direct {v9, v10, v8}, Lorg/mistergroup/shouldianswer/components/a/a;-><init>(Lorg/mistergroup/shouldianswer/components/a/a$a;Lorg/mistergroup/shouldianswer/model/ac;)V

    .line 65
    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 67
    :cond_2
    sget-object v7, Lorg/mistergroup/shouldianswer/components/a/g;->e:Lorg/mistergroup/shouldianswer/components/a/g;

    invoke-static {v7, v1}, Lorg/mistergroup/shouldianswer/components/a/g;->a(Lorg/mistergroup/shouldianswer/components/a/g;Ljava/util/List;)V

    .line 68
    invoke-static {}, Lorg/mistergroup/shouldianswer/utils/c;->b()Lkotlinx/coroutines/y;

    move-result-object v7

    check-cast v7, Lkotlin/c/f;

    new-instance v8, Lorg/mistergroup/shouldianswer/components/a/g$c$1;

    invoke-direct {v8, v1, v4}, Lorg/mistergroup/shouldianswer/components/a/g$c$1;-><init>(Ljava/util/List;Lkotlin/c/c;)V

    check-cast v8, Lkotlin/e/a/m;

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/components/a/g$c;->a:Ljava/lang/Object;

    iput-wide v5, p0, Lorg/mistergroup/shouldianswer/components/a/g$c;->c:J

    iput-object v1, p0, Lorg/mistergroup/shouldianswer/components/a/g$c;->b:Ljava/lang/Object;

    iput v2, p0, Lorg/mistergroup/shouldianswer/components/a/g$c;->d:I

    invoke-static {v7, v8, p0}, Lkotlinx/coroutines/e;->a(Lkotlin/c/f;Lkotlin/e/a/m;Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    move-wide v0, v5

    goto :goto_2

    :catch_1
    move-exception p1

    move-wide v0, v5

    .line 72
    :goto_1
    sget-object v2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    invoke-static {v2, p1, v4, v3, v4}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    .line 74
    :goto_2
    sget-object p1, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ContactsLiveData.readContacts.end in "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lorg/mistergroup/shouldianswer/utils/u;->a:Lorg/mistergroup/shouldianswer/utils/u;

    invoke-virtual {v5, v0, v1}, Lorg/mistergroup/shouldianswer/utils/u;->b(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ms"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v4, v3, v4}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 75
    sget-object p1, Lkotlin/o;->a:Lkotlin/o;

    return-object p1
.end method
