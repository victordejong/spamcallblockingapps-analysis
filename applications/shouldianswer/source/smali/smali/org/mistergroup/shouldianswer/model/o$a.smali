.class public final Lorg/mistergroup/shouldianswer/model/o$a;
.super Ljava/lang/Object;
.source "CheckedCall.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mistergroup/shouldianswer/model/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/e/b/e;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/model/o$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lorg/mistergroup/shouldianswer/model/NumberInfo;JLkotlin/c/c;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mistergroup/shouldianswer/model/NumberInfo;",
            "J",
            "Lkotlin/c/c<",
            "-",
            "Lorg/mistergroup/shouldianswer/model/o;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p4, Lorg/mistergroup/shouldianswer/model/o$a$a;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lorg/mistergroup/shouldianswer/model/o$a$a;

    iget v1, v0, Lorg/mistergroup/shouldianswer/model/o$a$a;->b:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p4, v0, Lorg/mistergroup/shouldianswer/model/o$a$a;->b:I

    sub-int/2addr p4, v2

    iput p4, v0, Lorg/mistergroup/shouldianswer/model/o$a$a;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/mistergroup/shouldianswer/model/o$a$a;

    invoke-direct {v0, p0, p4}, Lorg/mistergroup/shouldianswer/model/o$a$a;-><init>(Lorg/mistergroup/shouldianswer/model/o$a;Lkotlin/c/c;)V

    :goto_0
    iget-object p4, v0, Lorg/mistergroup/shouldianswer/model/o$a$a;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/c/a/b;->a()Ljava/lang/Object;

    move-result-object v1

    .line 29
    iget v2, v0, Lorg/mistergroup/shouldianswer/model/o$a$a;->b:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lorg/mistergroup/shouldianswer/model/o$a$a;->g:Ljava/lang/Object;

    check-cast p1, Lorg/mistergroup/shouldianswer/model/o;

    iget-object p2, v0, Lorg/mistergroup/shouldianswer/model/o$a$a;->f:Ljava/lang/Object;

    check-cast p2, Lorg/mistergroup/shouldianswer/model/o;

    iget-wide v1, v0, Lorg/mistergroup/shouldianswer/model/o$a$a;->h:J

    iget-object p3, v0, Lorg/mistergroup/shouldianswer/model/o$a$a;->e:Ljava/lang/Object;

    check-cast p3, Lorg/mistergroup/shouldianswer/model/NumberInfo;

    iget-object p3, v0, Lorg/mistergroup/shouldianswer/model/o$a$a;->d:Ljava/lang/Object;

    check-cast p3, Lorg/mistergroup/shouldianswer/model/o$a;

    invoke-static {p4}, Lkotlin/k;->a(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 40
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 29
    :cond_2
    iget-object p1, v0, Lorg/mistergroup/shouldianswer/model/o$a$a;->g:Ljava/lang/Object;

    check-cast p1, Lorg/mistergroup/shouldianswer/model/o;

    iget-object p2, v0, Lorg/mistergroup/shouldianswer/model/o$a$a;->f:Ljava/lang/Object;

    check-cast p2, Lorg/mistergroup/shouldianswer/model/o;

    iget-wide v4, v0, Lorg/mistergroup/shouldianswer/model/o$a$a;->h:J

    iget-object p3, v0, Lorg/mistergroup/shouldianswer/model/o$a$a;->e:Ljava/lang/Object;

    check-cast p3, Lorg/mistergroup/shouldianswer/model/NumberInfo;

    iget-object v2, v0, Lorg/mistergroup/shouldianswer/model/o$a$a;->d:Ljava/lang/Object;

    check-cast v2, Lorg/mistergroup/shouldianswer/model/o$a;

    invoke-static {p4}, Lkotlin/k;->a(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p4}, Lkotlin/k;->a(Ljava/lang/Object;)V

    .line 30
    new-instance p4, Lorg/mistergroup/shouldianswer/model/o;

    invoke-direct {p4}, Lorg/mistergroup/shouldianswer/model/o;-><init>()V

    .line 31
    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4, v2}, Lorg/mistergroup/shouldianswer/model/o;->a(Ljava/lang/String;)V

    .line 32
    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4, v2}, Lorg/mistergroup/shouldianswer/model/o;->b(Ljava/lang/String;)V

    .line 33
    iput-object p0, v0, Lorg/mistergroup/shouldianswer/model/o$a$a;->d:Ljava/lang/Object;

    iput-object p1, v0, Lorg/mistergroup/shouldianswer/model/o$a$a;->e:Ljava/lang/Object;

    iput-wide p2, v0, Lorg/mistergroup/shouldianswer/model/o$a$a;->h:J

    iput-object p4, v0, Lorg/mistergroup/shouldianswer/model/o$a$a;->f:Ljava/lang/Object;

    iput-object p4, v0, Lorg/mistergroup/shouldianswer/model/o$a$a;->g:Ljava/lang/Object;

    iput v4, v0, Lorg/mistergroup/shouldianswer/model/o$a$a;->b:I

    invoke-virtual {p1, v0}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->m(Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_4

    return-object v1

    :cond_4
    move-wide v4, p2

    move-object p2, p4

    move-object p3, p1

    move-object p1, p2

    move-object p4, v2

    move-object v2, p0

    .line 29
    :goto_1
    check-cast p4, Lorg/mistergroup/shouldianswer/model/ag;

    invoke-virtual {p1, p4}, Lorg/mistergroup/shouldianswer/model/o;->a(Lorg/mistergroup/shouldianswer/model/ag;)V

    .line 34
    invoke-virtual {p3}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->d()Lorg/mistergroup/shouldianswer/model/k;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/mistergroup/shouldianswer/model/o;->a(Lorg/mistergroup/shouldianswer/model/k;)V

    .line 35
    invoke-virtual {p3}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/mistergroup/shouldianswer/model/o;->c(Ljava/lang/String;)V

    .line 36
    iput-object v2, v0, Lorg/mistergroup/shouldianswer/model/o$a$a;->d:Ljava/lang/Object;

    iput-object p3, v0, Lorg/mistergroup/shouldianswer/model/o$a$a;->e:Ljava/lang/Object;

    iput-wide v4, v0, Lorg/mistergroup/shouldianswer/model/o$a$a;->h:J

    iput-object p2, v0, Lorg/mistergroup/shouldianswer/model/o$a$a;->f:Ljava/lang/Object;

    iput-object p2, v0, Lorg/mistergroup/shouldianswer/model/o$a$a;->g:Ljava/lang/Object;

    iput v3, v0, Lorg/mistergroup/shouldianswer/model/o$a$a;->b:I

    invoke-virtual {p3, v0}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->e(Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v1, :cond_5

    return-object v1

    :cond_5
    move-object p1, p2

    move-wide v1, v4

    .line 29
    :goto_2
    check-cast p4, Lorg/mistergroup/shouldianswer/model/h;

    invoke-virtual {p1, p4}, Lorg/mistergroup/shouldianswer/model/o;->a(Lorg/mistergroup/shouldianswer/model/h;)V

    .line 39
    invoke-static {v1, v2}, Lkotlin/c/b/a/b;->a(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/mistergroup/shouldianswer/model/o;->a(Ljava/lang/Long;)V

    return-object p2
.end method
