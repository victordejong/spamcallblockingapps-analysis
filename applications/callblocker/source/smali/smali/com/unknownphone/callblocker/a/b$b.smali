.class Lcom/unknownphone/callblocker/a/b$b;
.super Landroid/os/AsyncTask;
.source "BlockedFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unknownphone/callblocker/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unknownphone/callblocker/a/b$b$a;
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
            "Lcom/unknownphone/callblocker/a/b;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/unknownphone/callblocker/a/b$b$a;


# direct methods
.method constructor <init>(Lcom/unknownphone/callblocker/a/b;Lcom/unknownphone/callblocker/a/b$b$a;)V
    .locals 1

    .prologue
    .line 640
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 641
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/unknownphone/callblocker/a/b$b;->a:Ljava/lang/ref/WeakReference;

    .line 642
    iput-object p2, p0, Lcom/unknownphone/callblocker/a/b$b;->b:Lcom/unknownphone/callblocker/a/b$b$a;

    .line 643
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 8

    .prologue
    const/16 v7, 0x32

    const/4 v6, 0x0

    .line 671
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/b$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unknownphone/callblocker/a/b;

    .line 673
    if-eqz v0, :cond_0

    .line 674
    invoke-virtual {v0}, Lcom/unknownphone/callblocker/a/b;->B()Z

    move-result v1

    if-nez v1, :cond_0

    .line 675
    invoke-virtual {v0}, Lcom/unknownphone/callblocker/a/b;->A()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 690
    :cond_0
    :goto_0
    return-object v6

    .line 679
    :cond_1
    :try_start_0
    new-instance v1, Lcom/unknownphone/callblocker/d/b;

    invoke-virtual {v0}, Lcom/unknownphone/callblocker/a/b;->p()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/unknownphone/callblocker/d/b;-><init>(Landroid/content/Context;)V

    .line 680
    new-instance v2, Ljava/util/ArrayList;

    .line 681
    invoke-static {v0}, Lcom/unknownphone/callblocker/a/b;->b(Lcom/unknownphone/callblocker/a/b;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Lcom/unknownphone/callblocker/a/b;->p(Lcom/unknownphone/callblocker/a/b;)I

    move-result v4

    const/16 v5, 0x32

    .line 680
    invoke-virtual {v1, v3, v4, v5}, Lcom/unknownphone/callblocker/d/b;->a(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 682
    invoke-static {v0}, Lcom/unknownphone/callblocker/a/b;->a(Lcom/unknownphone/callblocker/a/b;)Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 683
    invoke-static {v0}, Lcom/unknownphone/callblocker/a/b;->a(Lcom/unknownphone/callblocker/a/b;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 684
    invoke-static {v0}, Lcom/unknownphone/callblocker/a/b;->d(Lcom/unknownphone/callblocker/a/b;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v7, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 686
    :catch_0
    move-exception v0

    .line 687
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 684
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected a(Ljava/lang/Void;)V
    .locals 3

    .prologue
    .line 696
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/b$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unknownphone/callblocker/a/b;

    .line 698
    if-eqz v0, :cond_0

    .line 699
    invoke-virtual {v0}, Lcom/unknownphone/callblocker/a/b;->B()Z

    move-result v1

    if-nez v1, :cond_0

    .line 700
    invoke-virtual {v0}, Lcom/unknownphone/callblocker/a/b;->A()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 715
    :cond_0
    :goto_0
    return-void

    .line 704
    :cond_1
    :try_start_0
    invoke-static {v0}, Lcom/unknownphone/callblocker/a/b;->d(Lcom/unknownphone/callblocker/a/b;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 705
    invoke-static {v0}, Lcom/unknownphone/callblocker/a/b;->a(Lcom/unknownphone/callblocker/a/b;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 706
    invoke-static {v0}, Lcom/unknownphone/callblocker/a/b;->a(Lcom/unknownphone/callblocker/a/b;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 708
    :cond_2
    invoke-static {v0}, Lcom/unknownphone/callblocker/a/b;->k(Lcom/unknownphone/callblocker/a/b;)Lcom/unknownphone/callblocker/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unknownphone/callblocker/a/a;->d()V

    .line 709
    invoke-static {v0}, Lcom/unknownphone/callblocker/a/b;->c(Lcom/unknownphone/callblocker/a/b;)Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;

    move-result-object v1

    invoke-static {v0}, Lcom/unknownphone/callblocker/a/b;->a(Lcom/unknownphone/callblocker/a/b;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_4

    .line 710
    invoke-static {v0}, Lcom/unknownphone/callblocker/a/b;->b(Lcom/unknownphone/callblocker/a/b;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    .line 709
    :goto_1
    invoke-virtual {v1, v0}, Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;->setView(I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 712
    :catch_0
    move-exception v0

    .line 713
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 710
    :cond_3
    const/4 v0, 0x2

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 630
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/unknownphone/callblocker/a/b$b;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 630
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/unknownphone/callblocker/a/b$b;->a(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    .line 648
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/b$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unknownphone/callblocker/a/b;

    .line 650
    if-eqz v0, :cond_0

    .line 651
    invoke-virtual {v0}, Lcom/unknownphone/callblocker/a/b;->B()Z

    move-result v1

    if-nez v1, :cond_0

    .line 652
    invoke-virtual {v0}, Lcom/unknownphone/callblocker/a/b;->A()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 666
    :cond_0
    :goto_0
    return-void

    .line 656
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/unknownphone/callblocker/a/b$b;->b:Lcom/unknownphone/callblocker/a/b$b$a;

    sget-object v2, Lcom/unknownphone/callblocker/a/b$b$a;->a:Lcom/unknownphone/callblocker/a/b$b$a;

    if-ne v1, v2, :cond_0

    .line 657
    invoke-static {v0}, Lcom/unknownphone/callblocker/a/b;->c(Lcom/unknownphone/callblocker/a/b;)Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;->setView(I)V

    .line 658
    invoke-static {v0}, Lcom/unknownphone/callblocker/a/b;->o(Lcom/unknownphone/callblocker/a/b;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->w()V

    .line 659
    invoke-static {v0}, Lcom/unknownphone/callblocker/a/b;->d(Lcom/unknownphone/callblocker/a/b;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 660
    invoke-static {v0}, Lcom/unknownphone/callblocker/a/b;->a(Lcom/unknownphone/callblocker/a/b;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 661
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/unknownphone/callblocker/a/b;->b(Lcom/unknownphone/callblocker/a/b;I)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 663
    :catch_0
    move-exception v0

    .line 664
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method
