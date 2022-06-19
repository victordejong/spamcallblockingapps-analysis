.class public final Lorg/mistergroup/shouldianswer/ui/main/c/m$a;
.super Landroidx/recyclerview/widget/RecyclerView$n;
.source "LogsFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mistergroup/shouldianswer/ui/main/c/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lorg/mistergroup/shouldianswer/ui/main/c/m;


# direct methods
.method public constructor <init>(Lorg/mistergroup/shouldianswer/ui/main/c/m;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 52
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/m$a;->a:Lorg/mistergroup/shouldianswer/ui/main/c/m;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$n;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 1

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$n;->a(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 56
    :try_start_0
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/m$a;->a:Lorg/mistergroup/shouldianswer/ui/main/c/m;

    invoke-static {p1}, Lorg/mistergroup/shouldianswer/ui/main/c/m;->a(Lorg/mistergroup/shouldianswer/ui/main/c/m;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/mistergroup/shouldianswer/ui/main/MainFragment;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/ui/main/MainFragment;->a()I

    move-result p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    if-nez p3, :cond_1

    return-void

    .line 58
    :cond_1
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/m$a;->a:Lorg/mistergroup/shouldianswer/ui/main/c/m;

    invoke-static {p1}, Lorg/mistergroup/shouldianswer/ui/main/c/m;->b(Lorg/mistergroup/shouldianswer/ui/main/c/m;)Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->a(Z)Lorg/mistergroup/shouldianswer/components/stickyheaders/a$e;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 60
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/main/c/m$a;->a:Lorg/mistergroup/shouldianswer/ui/main/c/m;

    invoke-static {p2}, Lorg/mistergroup/shouldianswer/ui/main/c/m;->c(Lorg/mistergroup/shouldianswer/ui/main/c/m;)Lorg/mistergroup/shouldianswer/ui/main/c/h;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 61
    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/components/stickyheaders/a$e;->b()I

    move-result v0

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/components/stickyheaders/a$e;->a()I

    move-result p1

    invoke-virtual {p2, v0, p1}, Lorg/mistergroup/shouldianswer/ui/main/c/h;->f(II)I

    move-result p1

    .line 62
    invoke-virtual {p2, p1}, Lorg/mistergroup/shouldianswer/ui/main/c/h;->l(I)V

    :cond_2
    if-lez p3, :cond_3

    .line 65
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/m$a;->a:Lorg/mistergroup/shouldianswer/ui/main/c/m;

    invoke-static {p1}, Lorg/mistergroup/shouldianswer/ui/main/c/m;->a(Lorg/mistergroup/shouldianswer/ui/main/c/m;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/mistergroup/shouldianswer/ui/main/MainFragment;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/ui/main/MainFragment;->f()V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/m$a;->a:Lorg/mistergroup/shouldianswer/ui/main/c/m;

    invoke-static {p1}, Lorg/mistergroup/shouldianswer/ui/main/c/m;->a(Lorg/mistergroup/shouldianswer/ui/main/c/m;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/mistergroup/shouldianswer/ui/main/MainFragment;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/ui/main/MainFragment;->e()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_4
    :goto_0
    return-void

    :catch_0
    move-exception p1

    .line 67
    sget-object p2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 p3, 0x2

    const/4 v0, 0x0

    invoke-static {p2, p1, v0, p3, v0}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_5
    :goto_1
    return-void
.end method
