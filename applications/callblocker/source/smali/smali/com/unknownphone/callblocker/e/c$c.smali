.class Lcom/unknownphone/callblocker/e/c$c;
.super Landroid/os/AsyncTask;
.source "HomeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unknownphone/callblocker/e/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unknownphone/callblocker/e/c$c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/unknownphone/callblocker/e/c;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/unknownphone/callblocker/e/c$c$a;


# direct methods
.method constructor <init>(Lcom/unknownphone/callblocker/e/c;Lcom/unknownphone/callblocker/e/c$c$a;)V
    .locals 1

    .prologue
    .line 607
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 608
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/unknownphone/callblocker/e/c$c;->a:Ljava/lang/ref/WeakReference;

    .line 609
    iput-object p2, p0, Lcom/unknownphone/callblocker/e/c$c;->b:Lcom/unknownphone/callblocker/e/c$c$a;

    .line 610
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 7

    .prologue
    const/16 v6, 0x32

    const/4 v5, 0x0

    .line 638
    iget-object v0, p0, Lcom/unknownphone/callblocker/e/c$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unknownphone/callblocker/e/c;

    .line 640
    if-eqz v0, :cond_0

    .line 641
    invoke-virtual {v0}, Lcom/unknownphone/callblocker/e/c;->B()Z

    move-result v1

    if-nez v1, :cond_0

    .line 642
    invoke-virtual {v0}, Lcom/unknownphone/callblocker/e/c;->A()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 656
    :cond_0
    :goto_0
    return-object v5

    .line 646
    :cond_1
    :try_start_0
    new-instance v1, Lcom/unknownphone/callblocker/d/b;

    invoke-virtual {v0}, Lcom/unknownphone/callblocker/e/c;->p()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/unknownphone/callblocker/d/b;-><init>(Landroid/content/Context;)V

    .line 647
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/unknownphone/callblocker/e/c;->l(Lcom/unknownphone/callblocker/e/c;)I

    move-result v3

    const/16 v4, 0x32

    invoke-virtual {v1, v3, v4}, Lcom/unknownphone/callblocker/d/b;->a(II)Ljava/util/List;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 648
    invoke-static {v0}, Lcom/unknownphone/callblocker/e/c;->a(Lcom/unknownphone/callblocker/e/c;)Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 649
    invoke-static {v0}, Lcom/unknownphone/callblocker/e/c;->a(Lcom/unknownphone/callblocker/e/c;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 650
    invoke-static {v0}, Lcom/unknownphone/callblocker/e/c;->e(Lcom/unknownphone/callblocker/e/c;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v6, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 652
    :catch_0
    move-exception v0

    .line 653
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 650
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected a(Ljava/lang/Void;)V
    .locals 3

    .prologue
    .line 662
    iget-object v0, p0, Lcom/unknownphone/callblocker/e/c$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unknownphone/callblocker/e/c;

    .line 664
    if-eqz v0, :cond_0

    .line 665
    invoke-virtual {v0}, Lcom/unknownphone/callblocker/e/c;->B()Z

    move-result v1

    if-nez v1, :cond_0

    .line 666
    invoke-virtual {v0}, Lcom/unknownphone/callblocker/e/c;->A()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 681
    :cond_0
    :goto_0
    return-void

    .line 670
    :cond_1
    :try_start_0
    invoke-static {v0}, Lcom/unknownphone/callblocker/e/c;->e(Lcom/unknownphone/callblocker/e/c;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 671
    invoke-static {v0}, Lcom/unknownphone/callblocker/e/c;->a(Lcom/unknownphone/callblocker/e/c;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 672
    invoke-static {v0}, Lcom/unknownphone/callblocker/e/c;->a(Lcom/unknownphone/callblocker/e/c;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 674
    :cond_2
    invoke-static {v0}, Lcom/unknownphone/callblocker/e/c;->b(Lcom/unknownphone/callblocker/e/c;)Lcom/unknownphone/callblocker/e/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unknownphone/callblocker/e/b;->d()V

    .line 675
    invoke-static {v0}, Lcom/unknownphone/callblocker/e/c;->d(Lcom/unknownphone/callblocker/e/c;)Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;

    move-result-object v1

    invoke-static {v0}, Lcom/unknownphone/callblocker/e/c;->a(Lcom/unknownphone/callblocker/e/c;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;->setView(I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 678
    :catch_0
    move-exception v0

    .line 679
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 675
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 597
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/unknownphone/callblocker/e/c$c;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 597
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/unknownphone/callblocker/e/c$c;->a(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    .line 615
    iget-object v0, p0, Lcom/unknownphone/callblocker/e/c$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unknownphone/callblocker/e/c;

    .line 617
    if-eqz v0, :cond_0

    .line 618
    invoke-virtual {v0}, Lcom/unknownphone/callblocker/e/c;->B()Z

    move-result v1

    if-nez v1, :cond_0

    .line 619
    invoke-virtual {v0}, Lcom/unknownphone/callblocker/e/c;->A()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 633
    :cond_0
    :goto_0
    return-void

    .line 623
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/unknownphone/callblocker/e/c$c;->b:Lcom/unknownphone/callblocker/e/c$c$a;

    sget-object v2, Lcom/unknownphone/callblocker/e/c$c$a;->a:Lcom/unknownphone/callblocker/e/c$c$a;

    if-ne v1, v2, :cond_0

    .line 624
    invoke-static {v0}, Lcom/unknownphone/callblocker/e/c;->d(Lcom/unknownphone/callblocker/e/c;)Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;->setView(I)V

    .line 625
    invoke-static {v0}, Lcom/unknownphone/callblocker/e/c;->k(Lcom/unknownphone/callblocker/e/c;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->w()V

    .line 626
    invoke-static {v0}, Lcom/unknownphone/callblocker/e/c;->e(Lcom/unknownphone/callblocker/e/c;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 627
    invoke-static {v0}, Lcom/unknownphone/callblocker/e/c;->a(Lcom/unknownphone/callblocker/e/c;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 628
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/unknownphone/callblocker/e/c;->a(Lcom/unknownphone/callblocker/e/c;I)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 630
    :catch_0
    move-exception v0

    .line 631
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method
