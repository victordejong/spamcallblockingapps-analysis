.class public final Lorg/mistergroup/shouldianswer/model/w;
.super Ljava/util/Observable;
.source "NumberCaptions.kt"


# static fields
.field public static final a:Lorg/mistergroup/shouldianswer/model/w;

.field private static final b:Lorg/mistergroup/shouldianswer/model/u;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    new-instance v0, Lorg/mistergroup/shouldianswer/model/w;

    invoke-direct {v0}, Lorg/mistergroup/shouldianswer/model/w;-><init>()V

    sput-object v0, Lorg/mistergroup/shouldianswer/model/w;->a:Lorg/mistergroup/shouldianswer/model/w;

    .line 14
    sget-object v0, Lorg/mistergroup/shouldianswer/model/AppDatabase;->d:Lorg/mistergroup/shouldianswer/model/AppDatabase$a;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/model/AppDatabase$a;->a()Lorg/mistergroup/shouldianswer/model/AppDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/model/AppDatabase;->o()Lorg/mistergroup/shouldianswer/model/u;

    move-result-object v0

    sput-object v0, Lorg/mistergroup/shouldianswer/model/w;->b:Lorg/mistergroup/shouldianswer/model/u;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;ZZLkotlin/c/c;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZ",
            "Lkotlin/c/c<",
            "-",
            "Lorg/mistergroup/shouldianswer/model/NumberCaption;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 p5, 0x0

    .line 38
    move-object v0, p5

    check-cast v0, Lorg/mistergroup/shouldianswer/model/NumberCaption;

    const/4 v1, 0x2

    if-eqz p3, :cond_1

    .line 40
    :try_start_0
    sget-object p3, Lorg/mistergroup/shouldianswer/model/w;->b:Lorg/mistergroup/shouldianswer/model/u;

    if-nez p2, :cond_0

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_0
    invoke-interface {p3, p1, p2}, Lorg/mistergroup/shouldianswer/model/u;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    goto :goto_0

    :cond_1
    sget-object p3, Lorg/mistergroup/shouldianswer/model/w;->b:Lorg/mistergroup/shouldianswer/model/u;

    if-nez p2, :cond_2

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_2
    invoke-interface {p3, p1, p2}, Lorg/mistergroup/shouldianswer/model/u;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    .line 41
    :goto_0
    move-object p3, p2

    check-cast p3, Ljava/util/Collection;

    invoke-interface {p3}, Ljava/util/Collection;->isEmpty()Z

    move-result p3

    const/4 v2, 0x1

    xor-int/2addr p3, v2

    if-eqz p3, :cond_4

    .line 42
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-gt p3, v2, :cond_3

    const/4 p3, 0x0

    .line 43
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/mistergroup/shouldianswer/model/NumberCaption;

    goto :goto_1

    .line 42
    :cond_3
    new-instance p2, Ljava/lang/Exception;

    const-string p3, "NumberCaptions.getByNumber findByNumberNormalized returns more than 1 item!"

    invoke-direct {p2, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Throwable;

    throw p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p2

    .line 46
    sget-object p3, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    invoke-static {p3, p2, p5, v1, p5}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_4
    move-object p2, v0

    :goto_1
    if-eqz p4, :cond_5

    if-eqz p2, :cond_5

    .line 51
    sget-object p3, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "NumberCaption.getByNumber "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " returns contactId="

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/mistergroup/shouldianswer/model/NumberCaption;->a()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1, p5, v1, p5}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_5
    return-object p2
.end method

.method public final a(Ljava/util/List;Lkotlin/c/c;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/mistergroup/shouldianswer/model/NumberCaption;",
            ">;",
            "Lkotlin/c/c<",
            "-",
            "Lkotlin/o;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 84
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/mistergroup/shouldianswer/model/NumberCaption;

    .line 85
    sget-object v0, Lorg/mistergroup/shouldianswer/model/w;->b:Lorg/mistergroup/shouldianswer/model/u;

    invoke-virtual {p2}, Lorg/mistergroup/shouldianswer/model/NumberCaption;->a()I

    move-result p2

    invoke-interface {v0, p2}, Lorg/mistergroup/shouldianswer/model/u;->a(I)V

    goto :goto_0

    .line 87
    :cond_0
    sget-object p1, Lkotlin/o;->a:Lkotlin/o;

    return-object p1
.end method

.method public final a(Lkotlin/c/c;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/c/c<",
            "-",
            "Ljava/util/List<",
            "Lorg/mistergroup/shouldianswer/model/NumberCaption;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 17
    sget-object p1, Lorg/mistergroup/shouldianswer/model/w;->b:Lorg/mistergroup/shouldianswer/model/u;

    invoke-interface {p1}, Lorg/mistergroup/shouldianswer/model/u;->a()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lorg/mistergroup/shouldianswer/model/NumberInfo;ZLkotlin/c/c;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mistergroup/shouldianswer/model/NumberInfo;",
            "Z",
            "Lkotlin/c/c<",
            "-",
            "Lorg/mistergroup/shouldianswer/model/NumberCaption;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 30
    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->b()Ljava/lang/String;

    move-result-object v1

    .line 31
    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->c()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move-object v0, p0

    move v4, p2

    move-object v5, p3

    .line 29
    invoke-virtual/range {v0 .. v5}, Lorg/mistergroup/shouldianswer/model/w;->a(Ljava/lang/String;Ljava/lang/String;ZZLkotlin/c/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
