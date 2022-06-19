.class public final Lorg/mistergroup/shouldianswer/services/incall/a;
.super Landroid/telecom/Call$Callback;
.source "CallInfo.kt"


# instance fields
.field private a:Z

.field private final b:Lorg/mistergroup/shouldianswer/model/NumberInfo;

.field private c:J

.field private d:Z

.field private e:Lorg/mistergroup/shouldianswer/model/k;

.field private final f:Lorg/mistergroup/shouldianswer/services/incall/c;

.field private final g:Landroid/telecom/Call;


# direct methods
.method public constructor <init>(Lorg/mistergroup/shouldianswer/services/incall/c;Landroid/telecom/Call;)V
    .locals 7

    const-string v0, "presenter"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0}, Landroid/telecom/Call$Callback;-><init>()V

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/services/incall/a;->f:Lorg/mistergroup/shouldianswer/services/incall/c;

    iput-object p2, p0, Lorg/mistergroup/shouldianswer/services/incall/a;->g:Landroid/telecom/Call;

    .line 39
    sget-object p1, Lorg/mistergroup/shouldianswer/model/k;->h:Lorg/mistergroup/shouldianswer/model/k;

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/services/incall/a;->e:Lorg/mistergroup/shouldianswer/model/k;

    .line 75
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/services/incall/a;->e()Ljava/lang/String;

    move-result-object p1

    .line 76
    sget-object p2, Lorg/mistergroup/shouldianswer/utils/f;->a:Lorg/mistergroup/shouldianswer/utils/f;

    invoke-virtual {p2}, Lorg/mistergroup/shouldianswer/utils/f;->a()Ljava/lang/String;

    move-result-object v2

    .line 77
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/services/incall/a;->g:Landroid/telecom/Call;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/telecom/Call;->getState()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-direct {p0, p2}, Lorg/mistergroup/shouldianswer/services/incall/a;->a(Ljava/lang/Integer;)V

    if-eqz p1, :cond_1

    .line 80
    new-instance p2, Lorg/mistergroup/shouldianswer/model/NumberInfo;

    iget-object v0, p0, Lorg/mistergroup/shouldianswer/services/incall/a;->e:Lorg/mistergroup/shouldianswer/model/k;

    const/4 v1, 0x1

    invoke-direct {p2, p1, v2, v0, v1}, Lorg/mistergroup/shouldianswer/model/NumberInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/mistergroup/shouldianswer/model/k;Z)V

    move-object p1, p2

    goto :goto_1

    .line 82
    :cond_1
    new-instance p1, Lorg/mistergroup/shouldianswer/model/NumberInfo;

    iget-object v3, p0, Lorg/mistergroup/shouldianswer/services/incall/a;->e:Lorg/mistergroup/shouldianswer/model/k;

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    const-string v1, "-1"

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lorg/mistergroup/shouldianswer/model/NumberInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/mistergroup/shouldianswer/model/k;ZILkotlin/e/b/e;)V

    .line 79
    :goto_1
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/services/incall/a;->b:Lorg/mistergroup/shouldianswer/model/NumberInfo;

    .line 83
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide p1

    iput-wide p1, p0, Lorg/mistergroup/shouldianswer/services/incall/a;->c:J

    return-void
.end method

.method private final a(Ljava/lang/Integer;)V
    .locals 2

    if-eqz p1, :cond_2

    .line 133
    move-object v0, p1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    const/16 v0, 0x9

    .line 135
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v0, :cond_1

    :goto_0
    sget-object p1, Lorg/mistergroup/shouldianswer/model/k;->b:Lorg/mistergroup/shouldianswer/model/k;

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/services/incall/a;->e:Lorg/mistergroup/shouldianswer/model/k;

    goto :goto_1

    :cond_1
    const/4 v0, 0x2

    .line 136
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v0, :cond_2

    sget-object p1, Lorg/mistergroup/shouldianswer/model/k;->a:Lorg/mistergroup/shouldianswer/model/k;

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/services/incall/a;->e:Lorg/mistergroup/shouldianswer/model/k;

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/ref/WeakReference;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lorg/mistergroup/shouldianswer/services/incall/MyInCallService;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 89
    :try_start_0
    sget-object v2, Lorg/mistergroup/shouldianswer/model/ai;->a:Lorg/mistergroup/shouldianswer/model/ai;

    invoke-virtual {v2}, Lorg/mistergroup/shouldianswer/model/ai;->K()Lorg/mistergroup/shouldianswer/model/ai$b;

    move-result-object v2

    sget-object v3, Lorg/mistergroup/shouldianswer/model/ai$b;->c:Lorg/mistergroup/shouldianswer/model/ai$b;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v2, v3, :cond_0

    sget-object v2, Lorg/mistergroup/shouldianswer/model/c;->b:Lorg/mistergroup/shouldianswer/model/c;

    invoke-virtual {v2}, Lorg/mistergroup/shouldianswer/model/c;->E()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v5

    :goto_0
    if-eqz v2, :cond_1

    .line 91
    sget-object v3, Lorg/mistergroup/shouldianswer/services/incall/c;->a:Lorg/mistergroup/shouldianswer/services/incall/c;

    invoke-virtual {v3}, Lorg/mistergroup/shouldianswer/services/incall/c;->c()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-le v3, v4, :cond_1

    .line 92
    sget-object v2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v3, "CallInfo.processBlock cant use pickandhang due multiplecalls...using reject!"

    invoke-static {v2, v3, v1, v0, v1}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v5

    :cond_1
    const-string v3, ",country="

    const-string v6, "BLOCKAUDIT number:"

    if-eqz v2, :cond_5

    if-eqz p1, :cond_2

    .line 97
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mistergroup/shouldianswer/services/incall/MyInCallService;

    if-eqz v2, :cond_2

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v7}, Lorg/mistergroup/shouldianswer/services/incall/MyInCallService;->a(Ljava/util/Date;)V

    .line 98
    :cond_2
    sget-object v2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lorg/mistergroup/shouldianswer/services/incall/a;->b:Lorg/mistergroup/shouldianswer/model/NumberInfo;

    invoke-static {v6}, Lorg/mistergroup/shouldianswer/model/x;->a(Lorg/mistergroup/shouldianswer/model/NumberInfo;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/mistergroup/shouldianswer/services/incall/a;->b:Lorg/mistergroup/shouldianswer/model/NumberInfo;

    invoke-virtual {v3}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",typ=CALLINFO_PH"

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1, v0, v1}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 99
    sget-object v2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v3, "CallInfo.processBlock call.answer"

    invoke-static {v2, v3, v1, v0, v1}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 100
    iget-object v2, p0, Lorg/mistergroup/shouldianswer/services/incall/a;->g:Landroid/telecom/Call;

    if-eqz v2, :cond_3

    invoke-virtual {v2, v5}, Landroid/telecom/Call;->answer(I)V

    .line 101
    :cond_3
    sget-object v2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v3, "CallInfo.processBlock setMuted to true"

    invoke-static {v2, v3, v1, v0, v1}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    if-eqz p1, :cond_4

    .line 102
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/mistergroup/shouldianswer/services/incall/MyInCallService;

    if-eqz p1, :cond_4

    invoke-virtual {p1, v4}, Lorg/mistergroup/shouldianswer/services/incall/MyInCallService;->setMuted(Z)V

    .line 103
    :cond_4
    sget-object p1, Lkotlinx/coroutines/bd;->a:Lkotlinx/coroutines/bd;

    move-object v2, p1

    check-cast v2, Lkotlinx/coroutines/ad;

    invoke-static {}, Lorg/mistergroup/shouldianswer/utils/c;->b()Lkotlinx/coroutines/y;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lkotlin/c/f;

    const/4 v4, 0x0

    new-instance p1, Lorg/mistergroup/shouldianswer/services/incall/a$a;

    invoke-direct {p1, p0, v1}, Lorg/mistergroup/shouldianswer/services/incall/a$a;-><init>(Lorg/mistergroup/shouldianswer/services/incall/a;Lkotlin/c/c;)V

    move-object v5, p1

    check-cast v5, Lkotlin/e/a/m;

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/e;->b(Lkotlinx/coroutines/ad;Lkotlin/c/f;Lkotlinx/coroutines/ae;Lkotlin/e/a/m;ILjava/lang/Object;)Lkotlinx/coroutines/bk;

    goto :goto_1

    .line 121
    :cond_5
    sget-object p1, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v2, "CallInfo.processBlock call.reject"

    invoke-static {p1, v2, v1, v0, v1}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 122
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/services/incall/a;->g:Landroid/telecom/Call;

    if-eqz p1, :cond_6

    invoke-virtual {p1, v5, v1}, Landroid/telecom/Call;->reject(ZLjava/lang/String;)V

    .line 123
    :cond_6
    sget-object p1, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/mistergroup/shouldianswer/services/incall/a;->b:Lorg/mistergroup/shouldianswer/model/NumberInfo;

    invoke-static {v4}, Lorg/mistergroup/shouldianswer/model/x;->a(Lorg/mistergroup/shouldianswer/model/NumberInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/mistergroup/shouldianswer/services/incall/a;->b:Lorg/mistergroup/shouldianswer/model/NumberInfo;

    invoke-virtual {v3}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",typ=CALLINFO"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2, v1, v0, v1}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 125
    :goto_1
    new-instance p1, Lorg/mistergroup/shouldianswer/b/a;

    invoke-direct {p1}, Lorg/mistergroup/shouldianswer/b/a;-><init>()V

    iget-object v2, p0, Lorg/mistergroup/shouldianswer/services/incall/a;->b:Lorg/mistergroup/shouldianswer/model/NumberInfo;

    iget-wide v3, p0, Lorg/mistergroup/shouldianswer/services/incall/a;->c:J

    invoke-virtual {p1, v2, v3, v4}, Lorg/mistergroup/shouldianswer/b/a;->a(Lorg/mistergroup/shouldianswer/model/NumberInfo;J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 127
    sget-object v2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    invoke-static {v2, p1, v1, v0, v1}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    :goto_2
    return-void
.end method

.method public final a(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 29
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/services/incall/a;->g:Landroid/telecom/Call;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/telecom/Call;->hold()V

    goto :goto_0

    .line 31
    :cond_0
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/services/incall/a;->g:Landroid/telecom/Call;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/telecom/Call;->unhold()V

    .line 32
    :cond_1
    :goto_0
    iput-boolean p1, p0, Lorg/mistergroup/shouldianswer/services/incall/a;->a:Z

    return-void
.end method

.method public final a()Z
    .locals 1

    .line 26
    iget-boolean v0, p0, Lorg/mistergroup/shouldianswer/services/incall/a;->a:Z

    return v0
.end method

.method public final b()Lorg/mistergroup/shouldianswer/model/NumberInfo;
    .locals 1

    .line 35
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/services/incall/a;->b:Lorg/mistergroup/shouldianswer/model/NumberInfo;

    return-object v0
.end method

.method public final b(Z)V
    .locals 0

    .line 37
    iput-boolean p1, p0, Lorg/mistergroup/shouldianswer/services/incall/a;->d:Z

    return-void
.end method

.method public final c()Z
    .locals 1

    .line 37
    iget-boolean v0, p0, Lorg/mistergroup/shouldianswer/services/incall/a;->d:Z

    return v0
.end method

.method public final d()Lorg/mistergroup/shouldianswer/model/k;
    .locals 1

    .line 39
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/services/incall/a;->e:Lorg/mistergroup/shouldianswer/model/k;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 4

    .line 42
    sget-object v0, Lorg/mistergroup/shouldianswer/model/c;->b:Lorg/mistergroup/shouldianswer/model/c;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/model/c;->M()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    sget-object v0, Lorg/mistergroup/shouldianswer/model/c;->b:Lorg/mistergroup/shouldianswer/model/c;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/model/c;->M()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 43
    :cond_1
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/services/incall/a;->g:Landroid/telecom/Call;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 44
    invoke-virtual {v0}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v2

    const-string v3, "call.details"

    invoke-static {v2, v3}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/telecom/Call$Details;->getGatewayInfo()Landroid/telecom/GatewayInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/telecom/GatewayInfo;->getOriginalAddress()Landroid/net/Uri;

    move-result-object v0

    const-string v1, "it.originalAddress"

    invoke-static {v0, v1}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 45
    :cond_2
    invoke-virtual {v0}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/telecom/Call$Details;->getHandle()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 46
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    :cond_3
    return-object v1
.end method

.method public final f()Ljava/lang/String;
    .locals 3

    .line 52
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/services/incall/a;->g:Landroid/telecom/Call;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telecom/Call$Details;->getCallerDisplayName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 53
    :goto_0
    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v2, 0x1

    :goto_2
    if-eqz v2, :cond_3

    move-object v0, v1

    :cond_3
    return-object v0
.end method

.method public final g()Ljava/lang/Integer;
    .locals 1

    .line 57
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/services/incall/a;->g:Landroid/telecom/Call;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telecom/Call;->getState()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .locals 5

    .line 62
    sget-object v0, Lorg/mistergroup/shouldianswer/MyApp;->c:Lorg/mistergroup/shouldianswer/MyApp$a;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/MyApp$a;->a()Lorg/mistergroup/shouldianswer/MyApp;

    move-result-object v0

    .line 63
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/services/incall/a;->g()Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f100004

    if-nez v1, :cond_0

    goto :goto_0

    .line 64
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    invoke-virtual {v0, v2}, Lorg/mistergroup/shouldianswer/MyApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.getString(R.stri\u2026CALL_STATE_INCOMING_CALL)"

    invoke-static {v0, v1}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_1
    :goto_0
    const/4 v3, 0x1

    if-nez v1, :cond_2

    goto :goto_1

    .line 65
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v3, :cond_3

    const v1, 0x7f100001

    invoke-virtual {v0, v1}, Lorg/mistergroup/shouldianswer/MyApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.getString(R.string.CALL_STATE_DIALING)"

    invoke-static {v0, v1}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_3
    :goto_1
    const/16 v3, 0x9

    if-nez v1, :cond_4

    goto :goto_2

    .line 66
    :cond_4
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v3, :cond_5

    const/high16 v1, 0x7f100000

    invoke-virtual {v0, v1}, Lorg/mistergroup/shouldianswer/MyApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.getString(R.string.CALL_STATE_CONNECTING)"

    invoke-static {v0, v1}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_7

    :cond_5
    :goto_2
    const/16 v3, 0xa

    if-nez v1, :cond_6

    goto :goto_3

    .line 67
    :cond_6
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v3, :cond_7

    const v1, 0x7f100002

    invoke-virtual {v0, v1}, Lorg/mistergroup/shouldianswer/MyApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.getString(R.stri\u2026CALL_STATE_DISCONNECTING)"

    invoke-static {v0, v1}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_7

    :cond_7
    :goto_3
    const/4 v3, 0x3

    if-nez v1, :cond_8

    goto :goto_4

    .line 68
    :cond_8
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v3, :cond_9

    const v1, 0x7f100003

    invoke-virtual {v0, v1}, Lorg/mistergroup/shouldianswer/MyApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.getString(R.string.CALL_STATE_HOLDING)"

    invoke-static {v0, v1}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_7

    :cond_9
    :goto_4
    const/4 v3, 0x4

    if-nez v1, :cond_a

    goto :goto_6

    .line 69
    :cond_a
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v3, :cond_c

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/services/incall/a;->e:Lorg/mistergroup/shouldianswer/model/k;

    sget-object v3, Lorg/mistergroup/shouldianswer/model/k;->a:Lorg/mistergroup/shouldianswer/model/k;

    if-ne v1, v3, :cond_b

    goto :goto_5

    :cond_b
    const v2, 0x7f100005

    :goto_5
    invoke-virtual {v0, v2}, Lorg/mistergroup/shouldianswer/MyApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.getString(if (ca\u2026CALL_STATE_OUTGOING_CALL)"

    invoke-static {v0, v1}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_7

    :cond_c
    :goto_6
    const-string v0, ""

    :goto_7
    return-object v0
.end method

.method public final i()Landroid/telecom/Call;
    .locals 1

    .line 25
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/services/incall/a;->g:Landroid/telecom/Call;

    return-object v0
.end method

.method public onStateChanged(Landroid/telecom/Call;I)V
    .locals 4

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 v1, 0x0

    const-string v2, "CallInfo.onStateChanged update"

    const/4 v3, 0x2

    invoke-static {v0, v2, v1, v3, v1}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 143
    invoke-super {p0, p1, p2}, Landroid/telecom/Call$Callback;->onStateChanged(Landroid/telecom/Call;I)V

    .line 144
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/mistergroup/shouldianswer/services/incall/a;->a(Ljava/lang/Integer;)V

    .line 145
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/services/incall/a;->f:Lorg/mistergroup/shouldianswer/services/incall/c;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/services/incall/c;->d()V

    return-void
.end method
