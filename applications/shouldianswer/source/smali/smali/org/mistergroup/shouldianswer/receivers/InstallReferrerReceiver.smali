.class public final Lorg/mistergroup/shouldianswer/receivers/InstallReferrerReceiver;
.super Landroid/content/BroadcastReceiver;
.source "InstallReferrerReceiver.kt"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    const-string v0, "referrer"

    const-string v1, "context"

    invoke-static {p1, v1}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "intent"

    invoke-static {p2, p1}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x2

    const/4 v1, 0x0

    .line 16
    :try_start_0
    sget-object v2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v3, "BROADCAST: InstallReferrerReceiver"

    invoke-static {v2, v3, v1, p1, v1}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 17
    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 18
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "intent.getStringExtra(\"referrer\")"

    invoke-static {p2, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/CharSequence;

    const-string v0, "&"

    new-instance v2, Lkotlin/i/f;

    invoke-direct {v2, v0}, Lkotlin/i/f;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {v2, p2, v0}, Lkotlin/i/f;->a(Ljava/lang/CharSequence;I)Ljava/util/List;

    move-result-object p2

    .line 34
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_2

    .line 35
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p2, v2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v2

    .line 36
    :cond_0
    invoke-interface {v2}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 37
    invoke-interface {v2}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 18
    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_1

    move v4, v3

    goto :goto_0

    :cond_1
    move v4, v0

    :goto_0
    if-nez v4, :cond_0

    .line 38
    check-cast p2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/util/ListIterator;->nextIndex()I

    move-result v2

    add-int/2addr v2, v3

    invoke-static {p2, v2}, Lkotlin/a/g;->b(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object p2

    goto :goto_1

    .line 42
    :cond_2
    invoke-static {}, Lkotlin/a/g;->a()Ljava/util/List;

    move-result-object p2

    :goto_1
    check-cast p2, Ljava/util/Collection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "null cannot be cast to non-null type java.util.Collection<T>"

    if-eqz p2, :cond_a

    :try_start_1
    new-array v4, v0, [Ljava/lang/String;

    .line 44
    invoke-interface {p2, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v4, "null cannot be cast to non-null type kotlin.Array<T>"

    if-eqz p2, :cond_9

    .line 18
    :try_start_2
    check-cast p2, [Ljava/lang/String;

    .line 19
    array-length v5, p2

    move v6, v0

    :goto_2
    if-ge v6, v5, :cond_b

    aget-object v7, p2, v6

    .line 20
    check-cast v7, Ljava/lang/CharSequence;

    const-string v8, "="

    new-instance v9, Lkotlin/i/f;

    invoke-direct {v9, v8}, Lkotlin/i/f;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7, v0}, Lkotlin/i/f;->a(Ljava/lang/CharSequence;I)Ljava/util/List;

    move-result-object v7

    .line 45
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_5

    .line 46
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    invoke-interface {v7, v8}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v8

    .line 47
    :cond_3
    invoke-interface {v8}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 48
    invoke-interface {v8}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 20
    check-cast v9, Ljava/lang/CharSequence;

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-nez v9, :cond_4

    move v9, v3

    goto :goto_3

    :cond_4
    move v9, v0

    :goto_3
    if-nez v9, :cond_3

    .line 49
    check-cast v7, Ljava/lang/Iterable;

    invoke-interface {v8}, Ljava/util/ListIterator;->nextIndex()I

    move-result v8

    add-int/2addr v8, v3

    invoke-static {v7, v8}, Lkotlin/a/g;->b(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v7

    goto :goto_4

    .line 53
    :cond_5
    invoke-static {}, Lkotlin/a/g;->a()Ljava/util/List;

    move-result-object v7

    :goto_4
    check-cast v7, Ljava/util/Collection;

    if-eqz v7, :cond_8

    new-array v8, v0, [Ljava/lang/String;

    .line 55
    invoke-interface {v7, v8}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_7

    .line 20
    check-cast v7, [Ljava/lang/String;

    .line 21
    aget-object v8, v7, v0

    const-string v9, "utm_campaign"

    invoke-virtual {v8, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_6

    .line 22
    aget-object v7, v7, v3

    .line 23
    sget-object v8, Lorg/mistergroup/shouldianswer/model/c;->b:Lorg/mistergroup/shouldianswer/model/c;

    invoke-virtual {v8, v7}, Lorg/mistergroup/shouldianswer/model/c;->b(Ljava/lang/String;)V

    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 55
    :cond_7
    new-instance p2, Lkotlin/TypeCastException;

    invoke-direct {p2, v4}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 54
    :cond_8
    new-instance p2, Lkotlin/TypeCastException;

    invoke-direct {p2, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 44
    :cond_9
    new-instance p2, Lkotlin/TypeCastException;

    invoke-direct {p2, v4}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 43
    :cond_a
    new-instance p2, Lkotlin/TypeCastException;

    invoke-direct {p2, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p2

    .line 28
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    invoke-static {v0, p2, v1, p1, v1}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_b
    return-void
.end method
