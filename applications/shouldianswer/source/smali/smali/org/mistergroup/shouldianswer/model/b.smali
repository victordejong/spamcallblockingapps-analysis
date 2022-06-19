.class public final Lorg/mistergroup/shouldianswer/model/b;
.super Ljava/lang/Object;
.source "AppDatabaseConverters.kt"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lorg/mistergroup/shouldianswer/model/ag;)I
    .locals 1

    const-string v0, "rating"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/model/ag;->a()I

    move-result p1

    return p1
.end method

.method public final a(Lorg/mistergroup/shouldianswer/model/h;)I
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/model/h;->ordinal()I

    move-result p1

    return p1
.end method

.method public final a(Lorg/mistergroup/shouldianswer/model/k;)I
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/model/k;->a()I

    move-result p1

    return p1
.end method

.method public final a(Lorg/mistergroup/shouldianswer/model/m;)I
    .locals 1

    const-string v0, "category"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/model/m;->a()I

    move-result p1

    return p1
.end method

.method public final a(Ljava/util/Date;)Ljava/lang/Long;
    .locals 2

    if-eqz p1, :cond_0

    .line 20
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final a(Ljava/lang/Long;)Ljava/util/Date;
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 15
    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public final a(I)Lorg/mistergroup/shouldianswer/model/k;
    .locals 1

    .line 30
    sget-object v0, Lorg/mistergroup/shouldianswer/model/k;->i:Lorg/mistergroup/shouldianswer/model/k$a;

    invoke-virtual {v0, p1}, Lorg/mistergroup/shouldianswer/model/k$a;->a(I)Lorg/mistergroup/shouldianswer/model/k;

    move-result-object p1

    return-object p1
.end method

.method public final b(I)Lorg/mistergroup/shouldianswer/model/h;
    .locals 1

    .line 40
    invoke-static {}, Lorg/mistergroup/shouldianswer/model/h;->values()[Lorg/mistergroup/shouldianswer/model/h;

    move-result-object v0

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final c(I)Lorg/mistergroup/shouldianswer/model/ag;
    .locals 1

    .line 50
    sget-object v0, Lorg/mistergroup/shouldianswer/model/ag;->e:Lorg/mistergroup/shouldianswer/model/ag$a;

    invoke-virtual {v0, p1}, Lorg/mistergroup/shouldianswer/model/ag$a;->a(I)Lorg/mistergroup/shouldianswer/model/ag;

    move-result-object p1

    return-object p1
.end method

.method public final d(I)Lorg/mistergroup/shouldianswer/model/m;
    .locals 1

    .line 60
    sget-object v0, Lorg/mistergroup/shouldianswer/model/m;->w:Lorg/mistergroup/shouldianswer/model/m$a;

    invoke-virtual {v0, p1}, Lorg/mistergroup/shouldianswer/model/m$a;->a(I)Lorg/mistergroup/shouldianswer/model/m;

    move-result-object p1

    return-object p1
.end method
