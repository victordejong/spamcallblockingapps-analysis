.class final Lorg/mistergroup/shouldianswer/utils/t$e$2;
.super Lkotlin/c/b/a/k;
.source "RingingAlertHelper.kt"

# interfaces
.implements Lkotlin/e/a/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/utils/t$e;->b(Ljava/lang/Object;)Ljava/lang/Object;
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
    b = "RingingAlertHelper.kt"
    c = {}
    d = "invokeSuspend"
    e = "org.mistergroup.shouldianswer.utils.RingingAlertHelper$loadReviews$1$2"
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lorg/mistergroup/shouldianswer/utils/t$e;

.field final synthetic c:Ljava/lang/Exception;

.field private d:Lkotlinx/coroutines/ad;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/utils/t$e;Ljava/lang/Exception;Lkotlin/c/c;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/utils/t$e$2;->b:Lorg/mistergroup/shouldianswer/utils/t$e;

    iput-object p2, p0, Lorg/mistergroup/shouldianswer/utils/t$e$2;->c:Ljava/lang/Exception;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/c/b/a/k;-><init>(ILkotlin/c/c;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/c/c;

    invoke-virtual {p0, p1, p2}, Lorg/mistergroup/shouldianswer/utils/t$e$2;->a(Ljava/lang/Object;Lkotlin/c/c;)Lkotlin/c/c;

    move-result-object p1

    check-cast p1, Lorg/mistergroup/shouldianswer/utils/t$e$2;

    sget-object p2, Lkotlin/o;->a:Lkotlin/o;

    invoke-virtual {p1, p2}, Lorg/mistergroup/shouldianswer/utils/t$e$2;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/Object;Lkotlin/c/c;)Lkotlin/c/c;
    .locals 3
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

    new-instance v0, Lorg/mistergroup/shouldianswer/utils/t$e$2;

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/utils/t$e$2;->b:Lorg/mistergroup/shouldianswer/utils/t$e;

    iget-object v2, p0, Lorg/mistergroup/shouldianswer/utils/t$e$2;->c:Ljava/lang/Exception;

    invoke-direct {v0, v1, v2, p2}, Lorg/mistergroup/shouldianswer/utils/t$e$2;-><init>(Lorg/mistergroup/shouldianswer/utils/t$e;Ljava/lang/Exception;Lkotlin/c/c;)V

    check-cast p1, Lkotlinx/coroutines/ad;

    iput-object p1, v0, Lorg/mistergroup/shouldianswer/utils/t$e$2;->d:Lkotlinx/coroutines/ad;

    return-object v0
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lkotlin/c/a/b;->a()Ljava/lang/Object;

    .line 163
    iget v0, p0, Lorg/mistergroup/shouldianswer/utils/t$e$2;->a:I

    if-nez v0, :cond_3

    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/mistergroup/shouldianswer/utils/t$e$2;->d:Lkotlinx/coroutines/ad;

    .line 164
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/utils/t$e$2;->b:Lorg/mistergroup/shouldianswer/utils/t$e;

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/utils/t$e;->g:Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 165
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/utils/t$e$2;->b:Lorg/mistergroup/shouldianswer/utils/t$e;

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/utils/t$e;->f:Landroid/widget/ProgressBar;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 166
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/utils/t$e$2;->b:Lorg/mistergroup/shouldianswer/utils/t$e;

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/utils/t$e;->d:Lorg/mistergroup/shouldianswer/utils/t;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/utils/t;->o()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f100079

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "context.getString(R.stri\u2026r_review_download_failed)"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/utils/t$e$2;->c:Ljava/lang/Exception;

    instance-of v0, v0, Lorg/mistergroup/shouldianswer/model/communityDatabase/CommunityReviewsLoader$EServiceTemporarilyUnavailable;

    if-eqz v0, :cond_0

    .line 168
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/utils/t$e$2;->b:Lorg/mistergroup/shouldianswer/utils/t$e;

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/utils/t$e;->d:Lorg/mistergroup/shouldianswer/utils/t;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/utils/t;->o()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f10007a

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "context.getString(R.stri\u2026rror_service_unavailable)"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    :cond_0
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/utils/t$e$2;->b:Lorg/mistergroup/shouldianswer/utils/t$e;

    iget-object v0, v0, Lorg/mistergroup/shouldianswer/utils/t$e;->g:Landroidx/appcompat/widget/AppCompatTextView;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/utils/t$e$2;->b:Lorg/mistergroup/shouldianswer/utils/t$e;

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/utils/t$e;->d:Lorg/mistergroup/shouldianswer/utils/t;

    invoke-static {p1}, Lorg/mistergroup/shouldianswer/utils/t;->a(Lorg/mistergroup/shouldianswer/utils/t;)Lorg/mistergroup/shouldianswer/utils/t$a;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/mistergroup/shouldianswer/utils/t$e$2;->b:Lorg/mistergroup/shouldianswer/utils/t$e;

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/utils/t$e;->d:Lorg/mistergroup/shouldianswer/utils/t;

    invoke-static {p1}, Lorg/mistergroup/shouldianswer/utils/t;->a(Lorg/mistergroup/shouldianswer/utils/t;)Lorg/mistergroup/shouldianswer/utils/t$a;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_1
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/utils/t$e$2;->c:Ljava/lang/Exception;

    invoke-interface {p1, v0}, Lorg/mistergroup/shouldianswer/utils/t$a;->a(Ljava/lang/Exception;)V

    .line 171
    :cond_2
    sget-object p1, Lkotlin/o;->a:Lkotlin/o;

    return-object p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
