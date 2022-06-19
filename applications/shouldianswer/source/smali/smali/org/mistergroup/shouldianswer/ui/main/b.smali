.class public final Lorg/mistergroup/shouldianswer/ui/main/b;
.super Ljava/lang/Object;
.source "MainBanners.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mistergroup/shouldianswer/ui/main/b$a;,
        Lorg/mistergroup/shouldianswer/ui/main/b$b;
    }
.end annotation


# static fields
.field public static final a:Lorg/mistergroup/shouldianswer/ui/main/b$b;

.field private static d:I


# instance fields
.field private final b:Lorg/mistergroup/shouldianswer/ui/main/MainActivity;

.field private final c:Lorg/mistergroup/shouldianswer/a/y;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/mistergroup/shouldianswer/ui/main/b$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/mistergroup/shouldianswer/ui/main/b$b;-><init>(Lkotlin/e/b/e;)V

    sput-object v0, Lorg/mistergroup/shouldianswer/ui/main/b;->a:Lorg/mistergroup/shouldianswer/ui/main/b$b;

    return-void
.end method

.method public constructor <init>(Lorg/mistergroup/shouldianswer/ui/main/MainActivity;Lorg/mistergroup/shouldianswer/a/y;)V
    .locals 1

    const-string v0, "mainActivity"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "binding"

    invoke-static {p2, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/b;->b:Lorg/mistergroup/shouldianswer/ui/main/MainActivity;

    iput-object p2, p0, Lorg/mistergroup/shouldianswer/ui/main/b;->c:Lorg/mistergroup/shouldianswer/a/y;

    return-void
.end method

.method public static final synthetic a(I)V
    .locals 0

    .line 22
    sput p0, Lorg/mistergroup/shouldianswer/ui/main/b;->d:I

    return-void
.end method

.method private final a(Lorg/mistergroup/shouldianswer/ui/main/MainFragment$a;Lorg/mistergroup/shouldianswer/ui/main/b$a;)Z
    .locals 6

    .line 212
    invoke-virtual {p2}, Lorg/mistergroup/shouldianswer/ui/main/b$a;->d()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 214
    :cond_0
    invoke-virtual {p2, p1}, Lorg/mistergroup/shouldianswer/ui/main/b$a;->a(Lorg/mistergroup/shouldianswer/ui/main/MainFragment$a;)V

    .line 215
    sget-object v0, Lorg/mistergroup/shouldianswer/model/c;->b:Lorg/mistergroup/shouldianswer/model/c;

    invoke-virtual {v0, p1}, Lorg/mistergroup/shouldianswer/model/c;->a(Lorg/mistergroup/shouldianswer/ui/main/MainFragment$a;)J

    move-result-wide v2

    const/4 p1, -0x1

    int-to-long v4, p1

    cmp-long p1, v2, v4

    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 217
    invoke-virtual {p2, v0}, Lorg/mistergroup/shouldianswer/ui/main/b$a;->a(Z)V

    .line 218
    invoke-virtual {p2, v0}, Lorg/mistergroup/shouldianswer/ui/main/b$a;->b(Z)V

    return v0

    .line 221
    :cond_1
    invoke-virtual {p2}, Lorg/mistergroup/shouldianswer/ui/main/b$a;->c()J

    move-result-wide v4

    sub-long/2addr v4, v2

    const-wide/16 v2, 0x0

    cmp-long p1, v4, v2

    if-lez p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 222
    :goto_0
    invoke-virtual {p2, v0}, Lorg/mistergroup/shouldianswer/ui/main/b$a;->a(Z)V

    .line 223
    invoke-virtual {p2}, Lorg/mistergroup/shouldianswer/ui/main/b$a;->a()Z

    move-result p1

    return p1
.end method

.method public static final synthetic a(Lorg/mistergroup/shouldianswer/ui/main/b;Lorg/mistergroup/shouldianswer/ui/main/MainFragment$a;Lorg/mistergroup/shouldianswer/ui/main/b$a;)Z
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Lorg/mistergroup/shouldianswer/ui/main/b;->a(Lorg/mistergroup/shouldianswer/ui/main/MainFragment$a;Lorg/mistergroup/shouldianswer/ui/main/b$a;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic e()I
    .locals 1

    .line 22
    sget v0, Lorg/mistergroup/shouldianswer/ui/main/b;->d:I

    return v0
.end method


# virtual methods
.method final synthetic a(Lorg/mistergroup/shouldianswer/ui/main/b$a;Lkotlin/c/c;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mistergroup/shouldianswer/ui/main/b$a;",
            "Lkotlin/c/c<",
            "-",
            "Lkotlin/o;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lorg/mistergroup/shouldianswer/ui/main/b$j;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lorg/mistergroup/shouldianswer/ui/main/b$j;

    iget v1, v0, Lorg/mistergroup/shouldianswer/ui/main/b$j;->b:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lorg/mistergroup/shouldianswer/ui/main/b$j;->b:I

    sub-int/2addr p2, v2

    iput p2, v0, Lorg/mistergroup/shouldianswer/ui/main/b$j;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/mistergroup/shouldianswer/ui/main/b$j;

    invoke-direct {v0, p0, p2}, Lorg/mistergroup/shouldianswer/ui/main/b$j;-><init>(Lorg/mistergroup/shouldianswer/ui/main/b;Lkotlin/c/c;)V

    :goto_0
    iget-object p2, v0, Lorg/mistergroup/shouldianswer/ui/main/b$j;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/c/a/b;->a()Ljava/lang/Object;

    move-result-object v1

    .line 77
    iget v2, v0, Lorg/mistergroup/shouldianswer/ui/main/b$j;->b:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-eqz v2, :cond_3

    if-eq v2, v3, :cond_2

    if-ne v2, v5, :cond_1

    iget-object p1, v0, Lorg/mistergroup/shouldianswer/ui/main/b$j;->e:Ljava/lang/Object;

    check-cast p1, Lorg/mistergroup/shouldianswer/ui/main/b$a;

    iget-object p1, v0, Lorg/mistergroup/shouldianswer/ui/main/b$j;->d:Ljava/lang/Object;

    check-cast p1, Lorg/mistergroup/shouldianswer/ui/main/b;

    invoke-static {p2}, Lkotlin/k;->a(Ljava/lang/Object;)V

    goto :goto_3

    .line 93
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 77
    :cond_2
    iget-object p1, v0, Lorg/mistergroup/shouldianswer/ui/main/b$j;->e:Ljava/lang/Object;

    check-cast p1, Lorg/mistergroup/shouldianswer/ui/main/b$a;

    iget-object v2, v0, Lorg/mistergroup/shouldianswer/ui/main/b$j;->d:Ljava/lang/Object;

    check-cast v2, Lorg/mistergroup/shouldianswer/ui/main/b;

    invoke-static {p2}, Lkotlin/k;->a(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lkotlin/k;->a(Ljava/lang/Object;)V

    .line 78
    sget-object p2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v2, "MainBanners.checkProtectionNotWork"

    invoke-static {p2, v2, v4, v5, v4}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 79
    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/ui/main/b$a;->b()Z

    move-result p2

    if-nez p2, :cond_6

    sget-object p2, Lorg/mistergroup/shouldianswer/utils/s;->a:Lorg/mistergroup/shouldianswer/utils/s;

    iput-object p0, v0, Lorg/mistergroup/shouldianswer/ui/main/b$j;->d:Ljava/lang/Object;

    iput-object p1, v0, Lorg/mistergroup/shouldianswer/ui/main/b$j;->e:Ljava/lang/Object;

    iput v3, v0, Lorg/mistergroup/shouldianswer/ui/main/b$j;->b:I

    invoke-virtual {p2, v0}, Lorg/mistergroup/shouldianswer/utils/s;->a(Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    :cond_4
    move-object v2, p0

    .line 77
    :goto_1
    check-cast p2, Lorg/mistergroup/shouldianswer/utils/s$a;

    invoke-virtual {p2}, Lorg/mistergroup/shouldianswer/utils/s$a;->k()Z

    move-result p2

    if-nez p2, :cond_5

    goto :goto_2

    .line 93
    :cond_5
    sget-object p1, Lkotlin/o;->a:Lkotlin/o;

    return-object p1

    :cond_6
    move-object v2, p0

    .line 80
    :goto_2
    invoke-static {}, Lorg/mistergroup/shouldianswer/utils/c;->b()Lkotlinx/coroutines/y;

    move-result-object p2

    check-cast p2, Lkotlin/c/f;

    new-instance v3, Lorg/mistergroup/shouldianswer/ui/main/b$k;

    invoke-direct {v3, v2, p1, v4}, Lorg/mistergroup/shouldianswer/ui/main/b$k;-><init>(Lorg/mistergroup/shouldianswer/ui/main/b;Lorg/mistergroup/shouldianswer/ui/main/b$a;Lkotlin/c/c;)V

    check-cast v3, Lkotlin/e/a/m;

    iput-object v2, v0, Lorg/mistergroup/shouldianswer/ui/main/b$j;->d:Ljava/lang/Object;

    iput-object p1, v0, Lorg/mistergroup/shouldianswer/ui/main/b$j;->e:Ljava/lang/Object;

    iput v5, v0, Lorg/mistergroup/shouldianswer/ui/main/b$j;->b:I

    invoke-static {p2, v3, v0}, Lkotlinx/coroutines/e;->a(Lkotlin/c/f;Lkotlin/e/a/m;Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_7

    return-object v1

    :cond_7
    :goto_3
    return-object p2
.end method

.method public final a()V
    .locals 2

    .line 33
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/main/b;->c:Lorg/mistergroup/shouldianswer/a/y;

    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/y;->l:Lcom/google/android/material/card/MaterialCardView;

    const-string v1, "binding.cardBanner"

    invoke-static {v0, v1}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/material/card/MaterialCardView;->setVisibility(I)V

    return-void
.end method

.method final synthetic b(Lorg/mistergroup/shouldianswer/ui/main/b$a;Lkotlin/c/c;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mistergroup/shouldianswer/ui/main/b$a;",
            "Lkotlin/c/c<",
            "-",
            "Lkotlin/o;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lorg/mistergroup/shouldianswer/ui/main/b$e;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lorg/mistergroup/shouldianswer/ui/main/b$e;

    iget v1, v0, Lorg/mistergroup/shouldianswer/ui/main/b$e;->b:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lorg/mistergroup/shouldianswer/ui/main/b$e;->b:I

    sub-int/2addr p2, v2

    iput p2, v0, Lorg/mistergroup/shouldianswer/ui/main/b$e;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/mistergroup/shouldianswer/ui/main/b$e;

    invoke-direct {v0, p0, p2}, Lorg/mistergroup/shouldianswer/ui/main/b$e;-><init>(Lorg/mistergroup/shouldianswer/ui/main/b;Lkotlin/c/c;)V

    :goto_0
    iget-object p2, v0, Lorg/mistergroup/shouldianswer/ui/main/b$e;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/c/a/b;->a()Ljava/lang/Object;

    move-result-object v1

    .line 95
    iget v2, v0, Lorg/mistergroup/shouldianswer/ui/main/b$e;->b:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-eqz v2, :cond_3

    if-eq v2, v3, :cond_2

    if-ne v2, v5, :cond_1

    iget-object p1, v0, Lorg/mistergroup/shouldianswer/ui/main/b$e;->e:Ljava/lang/Object;

    check-cast p1, Lorg/mistergroup/shouldianswer/ui/main/b$a;

    iget-object p1, v0, Lorg/mistergroup/shouldianswer/ui/main/b$e;->d:Ljava/lang/Object;

    check-cast p1, Lorg/mistergroup/shouldianswer/ui/main/b;

    invoke-static {p2}, Lkotlin/k;->a(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 121
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 95
    :cond_2
    iget-object p1, v0, Lorg/mistergroup/shouldianswer/ui/main/b$e;->e:Ljava/lang/Object;

    check-cast p1, Lorg/mistergroup/shouldianswer/ui/main/b$a;

    iget-object v2, v0, Lorg/mistergroup/shouldianswer/ui/main/b$e;->d:Ljava/lang/Object;

    check-cast v2, Lorg/mistergroup/shouldianswer/ui/main/b;

    invoke-static {p2}, Lkotlin/k;->a(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lkotlin/k;->a(Ljava/lang/Object;)V

    .line 96
    sget-object p2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v2, "MainBanners.checkBlockingNotActive"

    invoke-static {p2, v2, v4, v5, v4}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 104
    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/ui/main/b$a;->b()Z

    move-result p2

    if-nez p2, :cond_6

    sget-object p2, Lorg/mistergroup/shouldianswer/model/ai;->a:Lorg/mistergroup/shouldianswer/model/ai;

    invoke-virtual {p2}, Lorg/mistergroup/shouldianswer/model/ai;->c()Lorg/mistergroup/shouldianswer/model/af;

    move-result-object p2

    sget-object v2, Lorg/mistergroup/shouldianswer/model/af;->d:Lorg/mistergroup/shouldianswer/model/af;

    if-eq p2, v2, :cond_5

    sget-object p2, Lorg/mistergroup/shouldianswer/model/ai;->a:Lorg/mistergroup/shouldianswer/model/ai;

    invoke-virtual {p2}, Lorg/mistergroup/shouldianswer/model/ai;->h()Z

    move-result p2

    if-nez p2, :cond_6

    sget-object p2, Lorg/mistergroup/shouldianswer/model/ai;->a:Lorg/mistergroup/shouldianswer/model/ai;

    invoke-virtual {p2}, Lorg/mistergroup/shouldianswer/model/ai;->i()Z

    move-result p2

    if-nez p2, :cond_6

    sget-object p2, Lorg/mistergroup/shouldianswer/model/ai;->a:Lorg/mistergroup/shouldianswer/model/ai;

    invoke-virtual {p2}, Lorg/mistergroup/shouldianswer/model/ai;->l()Z

    move-result p2

    if-nez p2, :cond_6

    sget-object p2, Lorg/mistergroup/shouldianswer/model/ai;->a:Lorg/mistergroup/shouldianswer/model/ai;

    invoke-virtual {p2}, Lorg/mistergroup/shouldianswer/model/ai;->k()Z

    move-result p2

    if-nez p2, :cond_6

    sget-object p2, Lorg/mistergroup/shouldianswer/model/ai;->a:Lorg/mistergroup/shouldianswer/model/ai;

    invoke-virtual {p2}, Lorg/mistergroup/shouldianswer/model/ai;->j()Z

    move-result p2

    if-nez p2, :cond_6

    sget-object p2, Lorg/mistergroup/shouldianswer/model/g;->a:Lorg/mistergroup/shouldianswer/model/g;

    iput-object p0, v0, Lorg/mistergroup/shouldianswer/ui/main/b$e;->d:Ljava/lang/Object;

    iput-object p1, v0, Lorg/mistergroup/shouldianswer/ui/main/b$e;->e:Ljava/lang/Object;

    iput v3, v0, Lorg/mistergroup/shouldianswer/ui/main/b$e;->b:I

    invoke-virtual {p2, v0}, Lorg/mistergroup/shouldianswer/model/g;->a(Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    :cond_4
    move-object v2, p0

    .line 95
    :goto_1
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_5

    goto :goto_2

    .line 121
    :cond_5
    sget-object p1, Lkotlin/o;->a:Lkotlin/o;

    return-object p1

    :cond_6
    move-object v2, p0

    .line 108
    :goto_2
    invoke-static {}, Lorg/mistergroup/shouldianswer/utils/c;->b()Lkotlinx/coroutines/y;

    move-result-object p2

    check-cast p2, Lkotlin/c/f;

    new-instance v3, Lorg/mistergroup/shouldianswer/ui/main/b$f;

    invoke-direct {v3, v2, p1, v4}, Lorg/mistergroup/shouldianswer/ui/main/b$f;-><init>(Lorg/mistergroup/shouldianswer/ui/main/b;Lorg/mistergroup/shouldianswer/ui/main/b$a;Lkotlin/c/c;)V

    check-cast v3, Lkotlin/e/a/m;

    iput-object v2, v0, Lorg/mistergroup/shouldianswer/ui/main/b$e;->d:Ljava/lang/Object;

    iput-object p1, v0, Lorg/mistergroup/shouldianswer/ui/main/b$e;->e:Ljava/lang/Object;

    iput v5, v0, Lorg/mistergroup/shouldianswer/ui/main/b$e;->b:I

    invoke-static {p2, v3, v0}, Lkotlinx/coroutines/e;->a(Lkotlin/c/f;Lkotlin/e/a/m;Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_7

    return-object v1

    :cond_7
    :goto_3
    return-object p2
.end method

.method public final b()V
    .locals 14

    .line 38
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 v1, 0x0

    const-string v2, "MainBanners.check"

    const/4 v3, 0x2

    invoke-static {v0, v2, v1, v3, v1}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 39
    new-instance v0, Lorg/mistergroup/shouldianswer/ui/main/b$a;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x3f

    const/4 v13, 0x0

    move-object v4, v0

    invoke-direct/range {v4 .. v13}, Lorg/mistergroup/shouldianswer/ui/main/b$a;-><init>(ZZJZLorg/mistergroup/shouldianswer/ui/main/MainFragment$a;IILkotlin/e/b/e;)V

    .line 41
    iget-object v2, p0, Lorg/mistergroup/shouldianswer/ui/main/b;->c:Lorg/mistergroup/shouldianswer/a/y;

    iget-object v2, v2, Lorg/mistergroup/shouldianswer/a/y;->l:Lcom/google/android/material/card/MaterialCardView;

    const-string v3, "binding.cardBanner"

    invoke-static {v2, v3}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/google/android/material/card/MaterialCardView;->setVisibility(I)V

    .line 42
    iget-object v2, p0, Lorg/mistergroup/shouldianswer/ui/main/b;->c:Lorg/mistergroup/shouldianswer/a/y;

    iget-object v2, v2, Lorg/mistergroup/shouldianswer/a/y;->g:Lcom/google/android/material/button/MaterialButton;

    const-string v3, "binding.butBannerSecondary"

    invoke-static {v2, v3}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lorg/mistergroup/shouldianswer/ui/main/b;->b:Lorg/mistergroup/shouldianswer/ui/main/MainActivity;

    const v4, 0x7f1001f0

    invoke-virtual {v3, v4}, Lorg/mistergroup/shouldianswer/ui/main/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Lcom/google/android/material/button/MaterialButton;->setText(Ljava/lang/CharSequence;)V

    .line 43
    iget-object v2, p0, Lorg/mistergroup/shouldianswer/ui/main/b;->c:Lorg/mistergroup/shouldianswer/a/y;

    iget-object v2, v2, Lorg/mistergroup/shouldianswer/a/y;->g:Lcom/google/android/material/button/MaterialButton;

    new-instance v3, Lorg/mistergroup/shouldianswer/ui/main/b$c;

    invoke-direct {v3, p0, v0}, Lorg/mistergroup/shouldianswer/ui/main/b$c;-><init>(Lorg/mistergroup/shouldianswer/ui/main/b;Lorg/mistergroup/shouldianswer/ui/main/b$a;)V

    check-cast v3, Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Lcom/google/android/material/button/MaterialButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    sget-object v2, Lkotlinx/coroutines/bd;->a:Lkotlinx/coroutines/bd;

    move-object v3, v2

    check-cast v3, Lkotlinx/coroutines/ad;

    invoke-static {}, Lorg/mistergroup/shouldianswer/utils/c;->a()Lkotlinx/coroutines/y;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lkotlin/c/f;

    new-instance v2, Lorg/mistergroup/shouldianswer/ui/main/b$d;

    invoke-direct {v2, p0, v0, v1}, Lorg/mistergroup/shouldianswer/ui/main/b$d;-><init>(Lorg/mistergroup/shouldianswer/ui/main/b;Lorg/mistergroup/shouldianswer/ui/main/b$a;Lkotlin/c/c;)V

    move-object v6, v2

    check-cast v6, Lkotlin/e/a/m;

    const/4 v5, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/e;->b(Lkotlinx/coroutines/ad;Lkotlin/c/f;Lkotlinx/coroutines/ae;Lkotlin/e/a/m;ILjava/lang/Object;)Lkotlinx/coroutines/bk;

    return-void
.end method

.method final synthetic c(Lorg/mistergroup/shouldianswer/ui/main/b$a;Lkotlin/c/c;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mistergroup/shouldianswer/ui/main/b$a;",
            "Lkotlin/c/c<",
            "-",
            "Lkotlin/o;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 125
    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/ui/main/b$a;->b()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/ui/main/b$a;->c()J

    move-result-wide v0

    sget-object v2, Lorg/mistergroup/shouldianswer/model/c;->b:Lorg/mistergroup/shouldianswer/model/c;

    invoke-virtual {v2}, Lorg/mistergroup/shouldianswer/model/c;->I()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const v2, 0x14997000

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    goto :goto_0

    .line 150
    :cond_0
    sget-object p1, Lkotlin/o;->a:Lkotlin/o;

    return-object p1

    .line 126
    :cond_1
    :goto_0
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-string v3, "MainBanners.checkOutdatedDatabase"

    invoke-static {v0, v3, v2, v1, v2}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 127
    invoke-static {}, Lorg/mistergroup/shouldianswer/utils/c;->b()Lkotlinx/coroutines/y;

    move-result-object v0

    check-cast v0, Lkotlin/c/f;

    new-instance v1, Lorg/mistergroup/shouldianswer/ui/main/b$h;

    invoke-direct {v1, p0, p1, v2}, Lorg/mistergroup/shouldianswer/ui/main/b$h;-><init>(Lorg/mistergroup/shouldianswer/ui/main/b;Lorg/mistergroup/shouldianswer/ui/main/b$a;Lkotlin/c/c;)V

    check-cast v1, Lkotlin/e/a/m;

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/e;->a(Lkotlin/c/f;Lkotlin/e/a/m;Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final c()Lorg/mistergroup/shouldianswer/ui/main/MainActivity;
    .locals 1

    .line 22
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/main/b;->b:Lorg/mistergroup/shouldianswer/ui/main/MainActivity;

    return-object v0
.end method

.method final synthetic d(Lorg/mistergroup/shouldianswer/ui/main/b$a;Lkotlin/c/c;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mistergroup/shouldianswer/ui/main/b$a;",
            "Lkotlin/c/c<",
            "-",
            "Lkotlin/o;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 153
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 v1, 0x0

    const-string v2, "MainBanners.checkUnaccessibleContacts"

    const/4 v3, 0x2

    invoke-static {v0, v2, v1, v3, v1}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 154
    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/ui/main/b$a;->b()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lorg/mistergroup/shouldianswer/model/ai;->a:Lorg/mistergroup/shouldianswer/model/ai;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/model/ai;->c()Lorg/mistergroup/shouldianswer/model/af;

    move-result-object v0

    sget-object v2, Lorg/mistergroup/shouldianswer/model/af;->c:Lorg/mistergroup/shouldianswer/model/af;

    if-ne v0, v2, :cond_0

    sget-object v0, Lorg/mistergroup/shouldianswer/utils/o;->a:Lorg/mistergroup/shouldianswer/utils/o;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/utils/o;->j()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 168
    :cond_0
    sget-object p1, Lkotlin/o;->a:Lkotlin/o;

    return-object p1

    .line 155
    :cond_1
    :goto_0
    invoke-static {}, Lorg/mistergroup/shouldianswer/utils/c;->b()Lkotlinx/coroutines/y;

    move-result-object v0

    check-cast v0, Lkotlin/c/f;

    new-instance v2, Lorg/mistergroup/shouldianswer/ui/main/b$l;

    invoke-direct {v2, p0, p1, v1}, Lorg/mistergroup/shouldianswer/ui/main/b$l;-><init>(Lorg/mistergroup/shouldianswer/ui/main/b;Lorg/mistergroup/shouldianswer/ui/main/b$a;Lkotlin/c/c;)V

    check-cast v2, Lkotlin/e/a/m;

    invoke-static {v0, v2, p2}, Lkotlinx/coroutines/e;->a(Lkotlin/c/f;Lkotlin/e/a/m;Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final d()Lorg/mistergroup/shouldianswer/a/y;
    .locals 1

    .line 22
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/main/b;->c:Lorg/mistergroup/shouldianswer/a/y;

    return-object v0
.end method

.method final synthetic e(Lorg/mistergroup/shouldianswer/ui/main/b$a;Lkotlin/c/c;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mistergroup/shouldianswer/ui/main/b$a;",
            "Lkotlin/c/c<",
            "-",
            "Lkotlin/o;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 171
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 v1, 0x0

    const-string v2, "MainBanners.checkOldAppVersions"

    const/4 v3, 0x2

    invoke-static {v0, v2, v1, v3, v1}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 175
    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/ui/main/b$a;->b()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lorg/mistergroup/shouldianswer/model/c;->b:Lorg/mistergroup/shouldianswer/model/c;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/model/c;->p()I

    move-result v0

    const/4 v2, 0x3

    if-le v0, v2, :cond_0

    .line 174
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/r;->a:Lorg/mistergroup/shouldianswer/utils/r;

    iget-object v2, p0, Lorg/mistergroup/shouldianswer/ui/main/b;->b:Lorg/mistergroup/shouldianswer/ui/main/MainActivity;

    check-cast v2, Landroid/content/Context;

    const-string v3, "org.mistergroup.muzutozvednout"

    invoke-virtual {v0, v3, v2}, Lorg/mistergroup/shouldianswer/utils/r;->a(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 175
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/r;->a:Lorg/mistergroup/shouldianswer/utils/r;

    iget-object v2, p0, Lorg/mistergroup/shouldianswer/ui/main/b;->b:Lorg/mistergroup/shouldianswer/ui/main/MainActivity;

    check-cast v2, Landroid/content/Context;

    const-string v3, "org.mistergroup.shouldianswerpersonal"

    invoke-virtual {v0, v3, v2}, Lorg/mistergroup/shouldianswer/utils/r;->a(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 189
    :cond_0
    sget-object p1, Lkotlin/o;->a:Lkotlin/o;

    return-object p1

    .line 177
    :cond_1
    :goto_0
    invoke-static {}, Lorg/mistergroup/shouldianswer/utils/c;->b()Lkotlinx/coroutines/y;

    move-result-object v0

    check-cast v0, Lkotlin/c/f;

    new-instance v2, Lorg/mistergroup/shouldianswer/ui/main/b$g;

    invoke-direct {v2, p0, p1, v1}, Lorg/mistergroup/shouldianswer/ui/main/b$g;-><init>(Lorg/mistergroup/shouldianswer/ui/main/b;Lorg/mistergroup/shouldianswer/ui/main/b$a;Lkotlin/c/c;)V

    check-cast v2, Lkotlin/e/a/m;

    invoke-static {v0, v2, p2}, Lkotlinx/coroutines/e;->a(Lkotlin/c/f;Lkotlin/e/a/m;Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method final synthetic f(Lorg/mistergroup/shouldianswer/ui/main/b$a;Lkotlin/c/c;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mistergroup/shouldianswer/ui/main/b$a;",
            "Lkotlin/c/c<",
            "-",
            "Lkotlin/o;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 193
    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/ui/main/b$a;->b()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lorg/mistergroup/shouldianswer/model/c;->b:Lorg/mistergroup/shouldianswer/model/c;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/model/c;->p()I

    move-result v0

    const/4 v1, 0x7

    if-le v0, v1, :cond_0

    sget-object v0, Lorg/mistergroup/shouldianswer/model/ai;->a:Lorg/mistergroup/shouldianswer/model/ai;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/model/ai;->c()Lorg/mistergroup/shouldianswer/model/af;

    move-result-object v0

    sget-object v1, Lorg/mistergroup/shouldianswer/model/af;->b:Lorg/mistergroup/shouldianswer/model/af;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 209
    :cond_0
    sget-object p1, Lkotlin/o;->a:Lkotlin/o;

    return-object p1

    .line 195
    :cond_1
    :goto_0
    invoke-static {}, Lorg/mistergroup/shouldianswer/utils/c;->b()Lkotlinx/coroutines/y;

    move-result-object v0

    check-cast v0, Lkotlin/c/f;

    new-instance v1, Lorg/mistergroup/shouldianswer/ui/main/b$i;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lorg/mistergroup/shouldianswer/ui/main/b$i;-><init>(Lorg/mistergroup/shouldianswer/ui/main/b;Lorg/mistergroup/shouldianswer/ui/main/b$a;Lkotlin/c/c;)V

    check-cast v1, Lkotlin/e/a/m;

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/e;->a(Lkotlin/c/f;Lkotlin/e/a/m;Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
