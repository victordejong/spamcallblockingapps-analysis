.class public Landroidx/fragment/app/d;
.super Landroidx/activity/b;
.source "FragmentActivity.java"

# interfaces
.implements Landroidx/core/app/a$a;
.implements Landroidx/core/app/a$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/fragment/app/d$a;
    }
.end annotation


# instance fields
.field final a:Landroidx/fragment/app/f;

.field final b:Landroidx/lifecycle/i;

.field c:Z

.field d:Z

.field e:Z

.field f:Z

.field g:Z

.field h:Z

.field i:I

.field j:Landroidx/b/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/b/h",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 127
    invoke-direct {p0}, Landroidx/activity/b;-><init>()V

    .line 82
    new-instance v0, Landroidx/fragment/app/d$a;

    invoke-direct {v0, p0}, Landroidx/fragment/app/d$a;-><init>(Landroidx/fragment/app/d;)V

    invoke-static {v0}, Landroidx/fragment/app/f;->a(Landroidx/fragment/app/h;)Landroidx/fragment/app/f;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/d;->a:Landroidx/fragment/app/f;

    .line 89
    new-instance v0, Landroidx/lifecycle/i;

    invoke-direct {v0, p0}, Landroidx/lifecycle/i;-><init>(Landroidx/lifecycle/h;)V

    iput-object v0, p0, Landroidx/fragment/app/d;->b:Landroidx/lifecycle/i;

    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/d;->e:Z

    .line 128
    return-void
.end method

.method private static a(Landroidx/fragment/app/i;Landroidx/lifecycle/e$b;)Z
    .locals 5

    .prologue
    .line 995
    const/4 v0, 0x0

    .line 996
    invoke-virtual {p0}, Landroidx/fragment/app/i;->c()Ljava/util/List;

    move-result-object v1

    .line 997
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 998
    if-eqz v0, :cond_0

    .line 1001
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->b()Landroidx/lifecycle/e;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/lifecycle/e;->a()Landroidx/lifecycle/e$b;

    move-result-object v3

    sget-object v4, Landroidx/lifecycle/e$b;->d:Landroidx/lifecycle/e$b;

    invoke-virtual {v3, v4}, Landroidx/lifecycle/e$b;->a(Landroidx/lifecycle/e$b;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1002
    iget-object v1, v0, Landroidx/fragment/app/Fragment;->aa:Landroidx/lifecycle/i;

    invoke-virtual {v1, p1}, Landroidx/lifecycle/i;->b(Landroidx/lifecycle/e$b;)V

    .line 1003
    const/4 v1, 0x1

    .line 1006
    :cond_1
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->t()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 1007
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->x()Landroidx/fragment/app/i;

    move-result-object v0

    .line 1008
    invoke-static {v0, p1}, Landroidx/fragment/app/d;->a(Landroidx/fragment/app/i;Landroidx/lifecycle/e$b;)Z

    move-result v0

    or-int/2addr v0, v1

    :goto_1
    move v1, v0

    .line 1010
    goto :goto_0

    .line 1011
    :cond_2
    return v1

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method private b(Landroidx/fragment/app/Fragment;)I
    .locals 4

    .prologue
    const v3, 0xfffe

    .line 830
    iget-object v0, p0, Landroidx/fragment/app/d;->j:Landroidx/b/h;

    invoke-virtual {v0}, Landroidx/b/h;->b()I

    move-result v0

    if-lt v0, v3, :cond_0

    .line 831
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Too many pending Fragment activity results."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 835
    :cond_0
    :goto_0
    iget-object v0, p0, Landroidx/fragment/app/d;->j:Landroidx/b/h;

    iget v1, p0, Landroidx/fragment/app/d;->i:I

    invoke-virtual {v0, v1}, Landroidx/b/h;->e(I)I

    move-result v0

    if-ltz v0, :cond_1

    .line 836
    iget v0, p0, Landroidx/fragment/app/d;->i:I

    add-int/lit8 v0, v0, 0x1

    rem-int/2addr v0, v3

    iput v0, p0, Landroidx/fragment/app/d;->i:I

    goto :goto_0

    .line 840
    :cond_1
    iget v0, p0, Landroidx/fragment/app/d;->i:I

    .line 841
    iget-object v1, p0, Landroidx/fragment/app/d;->j:Landroidx/b/h;

    iget-object v2, p1, Landroidx/fragment/app/Fragment;->o:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroidx/b/h;->b(ILjava/lang/Object;)V

    .line 842
    iget v1, p0, Landroidx/fragment/app/d;->i:I

    add-int/lit8 v1, v1, 0x1

    rem-int/2addr v1, v3

    iput v1, p0, Landroidx/fragment/app/d;->i:I

    .line 845
    return v0
.end method

.method static c(I)V
    .locals 2

    .prologue
    .line 714
    const/high16 v0, -0x10000

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    .line 715
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Can only use lower 16 bits for requestCode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 717
    :cond_0
    return-void
.end method

.method private f()V
    .locals 2

    .prologue
    .line 990
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/d;->m()Landroidx/fragment/app/i;

    move-result-object v0

    sget-object v1, Landroidx/lifecycle/e$b;->c:Landroidx/lifecycle/e$b;

    invoke-static {v0, v1}, Landroidx/fragment/app/d;->a(Landroidx/fragment/app/i;Landroidx/lifecycle/e$b;)Z

    move-result v0

    .line 991
    if-nez v0, :cond_0

    .line 992
    return-void
.end method


# virtual methods
.method final a(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Landroidx/fragment/app/d;->a:Landroidx/fragment/app/f;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/fragment/app/f;->a(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroidx/fragment/app/Fragment;)V
    .locals 0

    .prologue
    .line 628
    return-void
.end method

.method public a(Landroidx/fragment/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 3
    .param p2    # Landroid/content/Intent;
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "UnknownNullness"
            }
        .end annotation
    .end param

    .prologue
    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 788
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/d;->h:Z

    .line 790
    if-ne p3, v1, :cond_0

    .line 791
    const/4 v0, -0x1

    :try_start_0
    invoke-static {p0, p2, v0, p4}, Landroidx/core/app/a;->a(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 799
    iput-boolean v2, p0, Landroidx/fragment/app/d;->h:Z

    .line 801
    :goto_0
    return-void

    .line 794
    :cond_0
    :try_start_1
    invoke-static {p3}, Landroidx/fragment/app/d;->c(I)V

    .line 795
    invoke-direct {p0, p1}, Landroidx/fragment/app/d;->b(Landroidx/fragment/app/Fragment;)I

    move-result v0

    .line 796
    add-int/lit8 v0, v0, 0x1

    shl-int/lit8 v0, v0, 0x10

    const v1, 0xffff

    and-int/2addr v1, p3

    add-int/2addr v0, v1

    invoke-static {p0, p2, v0, p4}, Landroidx/core/app/a;->a(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 799
    iput-boolean v2, p0, Landroidx/fragment/app/d;->h:Z

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-boolean v2, p0, Landroidx/fragment/app/d;->h:Z

    .line 800
    throw v0
.end method

.method a(Landroidx/fragment/app/Fragment;[Ljava/lang/String;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 853
    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    .line 854
    invoke-static {p0, p2, p3}, Landroidx/core/app/a;->a(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 866
    :goto_0
    return-void

    .line 857
    :cond_0
    invoke-static {p3}, Landroidx/fragment/app/d;->c(I)V

    .line 859
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Landroidx/fragment/app/d;->f:Z

    .line 860
    invoke-direct {p0, p1}, Landroidx/fragment/app/d;->b(Landroidx/fragment/app/Fragment;)I

    move-result v0

    .line 861
    add-int/lit8 v0, v0, 0x1

    shl-int/lit8 v0, v0, 0x10

    const v1, 0xffff

    and-int/2addr v1, p3

    add-int/2addr v0, v1

    invoke-static {p0, p2, v0}, Landroidx/core/app/a;->a(Landroid/app/Activity;[Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 864
    iput-boolean v2, p0, Landroidx/fragment/app/d;->f:Z

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-boolean v2, p0, Landroidx/fragment/app/d;->f:Z

    .line 865
    throw v0
.end method

.method protected a(Landroid/view/View;Landroid/view/Menu;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 502
    const/4 v0, 0x0

    invoke-super {p0, v0, p1, p2}, Landroidx/activity/b;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public final a_(I)V
    .locals 1

    .prologue
    .line 728
    iget-boolean v0, p0, Landroidx/fragment/app/d;->f:Z

    if-nez v0, :cond_0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 730
    invoke-static {p1}, Landroidx/fragment/app/d;->c(I)V

    .line 732
    :cond_0
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 599
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/activity/b;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 600
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "Local FragmentActivity "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 601
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 602
    const-string/jumbo v0, " State:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 603
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 604
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mCreated="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 605
    iget-boolean v1, p0, Landroidx/fragment/app/d;->c:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v1, " mResumed="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 606
    iget-boolean v1, p0, Landroidx/fragment/app/d;->d:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v1, " mStopped="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 607
    iget-boolean v1, p0, Landroidx/fragment/app/d;->e:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 609
    invoke-virtual {p0}, Landroidx/fragment/app/d;->getApplication()Landroid/app/Application;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 610
    invoke-static {p0}, Landroidx/g/a/a;->a(Landroidx/lifecycle/h;)Landroidx/g/a/a;

    move-result-object v1

    invoke-virtual {v1, v0, p2, p3, p4}, Landroidx/g/a/a;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 612
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/d;->a:Landroidx/fragment/app/f;

    invoke-virtual {v0}, Landroidx/fragment/app/f;->a()Landroidx/fragment/app/i;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/fragment/app/i;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 613
    return-void
.end method

.method public g()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 583
    invoke-virtual {p0}, Landroidx/fragment/app/d;->invalidateOptionsMenu()V

    .line 584
    return-void
.end method

.method protected l()V
    .locals 2

    .prologue
    .line 478
    iget-object v0, p0, Landroidx/fragment/app/d;->b:Landroidx/lifecycle/i;

    sget-object v1, Landroidx/lifecycle/e$a;->ON_RESUME:Landroidx/lifecycle/e$a;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/i;->a(Landroidx/lifecycle/e$a;)V

    .line 479
    iget-object v0, p0, Landroidx/fragment/app/d;->a:Landroidx/fragment/app/f;

    invoke-virtual {v0}, Landroidx/fragment/app/f;->g()V

    .line 480
    return-void
.end method

.method public m()Landroidx/fragment/app/i;
    .locals 1

    .prologue
    .line 636
    iget-object v0, p0, Landroidx/fragment/app/d;->a:Landroidx/fragment/app/f;

    invoke-virtual {v0}, Landroidx/fragment/app/f;->a()Landroidx/fragment/app/i;

    move-result-object v0

    return-object v0
.end method

.method public n()Landroidx/g/a/a;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 646
    invoke-static {p0}, Landroidx/g/a/a;->a(Landroidx/lifecycle/h;)Landroidx/g/a/a;

    move-result-object v0

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .prologue
    .line 155
    iget-object v0, p0, Landroidx/fragment/app/d;->a:Landroidx/fragment/app/f;

    invoke-virtual {v0}, Landroidx/fragment/app/f;->b()V

    .line 156
    shr-int/lit8 v0, p1, 0x10

    .line 157
    if-eqz v0, :cond_3

    .line 158
    add-int/lit8 v1, v0, -0x1

    .line 160
    iget-object v0, p0, Landroidx/fragment/app/d;->j:Landroidx/b/h;

    invoke-virtual {v0, v1}, Landroidx/b/h;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 161
    iget-object v2, p0, Landroidx/fragment/app/d;->j:Landroidx/b/h;

    invoke-virtual {v2, v1}, Landroidx/b/h;->b(I)V

    .line 162
    if-nez v0, :cond_1

    .line 163
    const-string/jumbo v0, "FragmentActivity"

    const-string/jumbo v1, "Activity result delivered for unknown Fragment."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 166
    :cond_1
    iget-object v1, p0, Landroidx/fragment/app/d;->a:Landroidx/fragment/app/f;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/f;->a(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    .line 167
    if-nez v1, :cond_2

    .line 168
    const-string/jumbo v1, "FragmentActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Activity result no fragment exists for who: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 170
    :cond_2
    const v0, 0xffff

    and-int/2addr v0, p1

    invoke-virtual {v1, v0, p2, p3}, Landroidx/fragment/app/Fragment;->a(IILandroid/content/Intent;)V

    goto :goto_0

    .line 175
    :cond_3
    invoke-static {}, Landroidx/core/app/a;->a()Landroidx/core/app/a$b;

    move-result-object v0

    .line 176
    if-eqz v0, :cond_4

    invoke-interface {v0, p0, p1, p2, p3}, Landroidx/core/app/a$b;->a(Landroid/app/Activity;IILandroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 181
    :cond_4
    invoke-super {p0, p1, p2, p3}, Landroidx/activity/b;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .prologue
    .line 273
    invoke-super {p0, p1}, Landroidx/activity/b;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 274
    iget-object v0, p0, Landroidx/fragment/app/d;->a:Landroidx/fragment/app/f;

    invoke-virtual {v0}, Landroidx/fragment/app/f;->b()V

    .line 275
    iget-object v0, p0, Landroidx/fragment/app/d;->a:Landroidx/fragment/app/f;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/f;->a(Landroid/content/res/Configuration;)V

    .line 276
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 284
    iget-object v0, p0, Landroidx/fragment/app/d;->a:Landroidx/fragment/app/f;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroidx/fragment/app/f;->a(Landroidx/fragment/app/Fragment;)V

    .line 286
    if-eqz p1, :cond_1

    .line 287
    const-string/jumbo v0, "android:support:fragments"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 288
    iget-object v2, p0, Landroidx/fragment/app/d;->a:Landroidx/fragment/app/f;

    invoke-virtual {v2, v0}, Landroidx/fragment/app/f;->a(Landroid/os/Parcelable;)V

    .line 291
    const-string/jumbo v0, "android:support:next_request_index"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 292
    const-string/jumbo v0, "android:support:next_request_index"

    .line 293
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroidx/fragment/app/d;->i:I

    .line 294
    const-string/jumbo v0, "android:support:request_indicies"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v2

    .line 295
    const-string/jumbo v0, "android:support:request_fragment_who"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 296
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    array-length v0, v2

    array-length v4, v3

    if-eq v0, v4, :cond_3

    .line 298
    :cond_0
    const-string/jumbo v0, "FragmentActivity"

    const-string/jumbo v2, "Invalid requestCode mapping in savedInstanceState."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/d;->j:Landroidx/b/h;

    if-nez v0, :cond_2

    .line 309
    new-instance v0, Landroidx/b/h;

    invoke-direct {v0}, Landroidx/b/h;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/d;->j:Landroidx/b/h;

    .line 310
    iput v1, p0, Landroidx/fragment/app/d;->i:I

    .line 313
    :cond_2
    invoke-super {p0, p1}, Landroidx/activity/b;->onCreate(Landroid/os/Bundle;)V

    .line 315
    iget-object v0, p0, Landroidx/fragment/app/d;->b:Landroidx/lifecycle/i;

    sget-object v1, Landroidx/lifecycle/e$a;->ON_CREATE:Landroidx/lifecycle/e$a;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/i;->a(Landroidx/lifecycle/e$a;)V

    .line 316
    iget-object v0, p0, Landroidx/fragment/app/d;->a:Landroidx/fragment/app/f;

    invoke-virtual {v0}, Landroidx/fragment/app/f;->d()V

    .line 317
    return-void

    .line 300
    :cond_3
    new-instance v0, Landroidx/b/h;

    array-length v4, v2

    invoke-direct {v0, v4}, Landroidx/b/h;-><init>(I)V

    iput-object v0, p0, Landroidx/fragment/app/d;->j:Landroidx/b/h;

    move v0, v1

    .line 301
    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_1

    .line 302
    iget-object v4, p0, Landroidx/fragment/app/d;->j:Landroidx/b/h;

    aget v5, v2, v0

    aget-object v6, v3, v0

    invoke-virtual {v4, v5, v6}, Landroidx/b/h;->b(ILjava/lang/Object;)V

    .line 301
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 3

    .prologue
    .line 324
    if-nez p1, :cond_0

    .line 325
    invoke-super {p0, p1, p2}, Landroidx/activity/b;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v0

    .line 326
    iget-object v1, p0, Landroidx/fragment/app/d;->a:Landroidx/fragment/app/f;

    invoke-virtual {p0}, Landroidx/fragment/app/d;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Landroidx/fragment/app/f;->a(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 329
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/activity/b;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v0

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .prologue
    .line 336
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/fragment/app/d;->a(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    .line 337
    if-nez v0, :cond_0

    .line 338
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/activity/b;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    .line 340
    :cond_0
    return-object v0
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .prologue
    .line 347
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Landroidx/fragment/app/d;->a(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    .line 348
    if-nez v0, :cond_0

    .line 349
    invoke-super {p0, p1, p2, p3}, Landroidx/activity/b;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    .line 351
    :cond_0
    return-object v0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 365
    invoke-super {p0}, Landroidx/activity/b;->onDestroy()V

    .line 366
    iget-object v0, p0, Landroidx/fragment/app/d;->a:Landroidx/fragment/app/f;

    invoke-virtual {v0}, Landroidx/fragment/app/f;->j()V

    .line 367
    iget-object v0, p0, Landroidx/fragment/app/d;->b:Landroidx/lifecycle/i;

    sget-object v1, Landroidx/lifecycle/e$a;->ON_DESTROY:Landroidx/lifecycle/e$a;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/i;->a(Landroidx/lifecycle/e$a;)V

    .line 368
    return-void
.end method

.method public onLowMemory()V
    .locals 1

    .prologue
    .line 375
    invoke-super {p0}, Landroidx/activity/b;->onLowMemory()V

    .line 376
    iget-object v0, p0, Landroidx/fragment/app/d;->a:Landroidx/fragment/app/f;

    invoke-virtual {v0}, Landroidx/fragment/app/f;->k()V

    .line 377
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 384
    invoke-super {p0, p1, p2}, Landroidx/activity/b;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 385
    const/4 v0, 0x1

    .line 396
    :goto_0
    return v0

    .line 388
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 396
    const/4 v0, 0x0

    goto :goto_0

    .line 390
    :sswitch_0
    iget-object v0, p0, Landroidx/fragment/app/d;->a:Landroidx/fragment/app/f;

    invoke-virtual {v0, p2}, Landroidx/fragment/app/f;->a(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    .line 393
    :sswitch_1
    iget-object v0, p0, Landroidx/fragment/app/d;->a:Landroidx/fragment/app/f;

    invoke-virtual {v0, p2}, Landroidx/fragment/app/f;->b(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    .line 388
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x6 -> :sswitch_1
    .end sparse-switch
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Landroidx/fragment/app/d;->a:Landroidx/fragment/app/f;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/f;->a(Z)V

    .line 251
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1    # Landroid/content/Intent;
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "UnknownNullness"
            }
        .end annotation
    .end param

    .prologue
    .line 437
    invoke-super {p0, p1}, Landroidx/activity/b;->onNewIntent(Landroid/content/Intent;)V

    .line 438
    iget-object v0, p0, Landroidx/fragment/app/d;->a:Landroidx/fragment/app/f;

    invoke-virtual {v0}, Landroidx/fragment/app/f;->b()V

    .line 439
    return-void
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 1

    .prologue
    .line 405
    packed-switch p1, :pswitch_data_0

    .line 410
    :goto_0
    invoke-super {p0, p1, p2}, Landroidx/activity/b;->onPanelClosed(ILandroid/view/Menu;)V

    .line 411
    return-void

    .line 407
    :pswitch_0
    iget-object v0, p0, Landroidx/fragment/app/d;->a:Landroidx/fragment/app/f;

    invoke-virtual {v0, p2}, Landroidx/fragment/app/f;->b(Landroid/view/Menu;)V

    goto :goto_0

    .line 405
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 418
    invoke-super {p0}, Landroidx/activity/b;->onPause()V

    .line 419
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/d;->d:Z

    .line 420
    iget-object v0, p0, Landroidx/fragment/app/d;->a:Landroidx/fragment/app/f;

    invoke-virtual {v0}, Landroidx/fragment/app/f;->h()V

    .line 421
    iget-object v0, p0, Landroidx/fragment/app/d;->b:Landroidx/lifecycle/i;

    sget-object v1, Landroidx/lifecycle/e$a;->ON_PAUSE:Landroidx/lifecycle/e$a;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/i;->a(Landroidx/lifecycle/e$a;)V

    .line 422
    return-void
.end method

.method public onPictureInPictureModeChanged(Z)V
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Landroidx/fragment/app/d;->a:Landroidx/fragment/app/f;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/f;->b(Z)V

    .line 266
    return-void
.end method

.method protected onPostResume()V
    .locals 0

    .prologue
    .line 467
    invoke-super {p0}, Landroidx/activity/b;->onPostResume()V

    .line 468
    invoke-virtual {p0}, Landroidx/fragment/app/d;->l()V

    .line 469
    return-void
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 487
    if-nez p1, :cond_0

    .line 488
    invoke-virtual {p0, p2, p3}, Landroidx/fragment/app/d;->a(Landroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    .line 489
    iget-object v1, p0, Landroidx/fragment/app/d;->a:Landroidx/fragment/app/f;

    invoke-virtual {v1, p3}, Landroidx/fragment/app/f;->a(Landroid/view/Menu;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 492
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroidx/activity/b;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    goto :goto_0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 4

    .prologue
    const v3, 0xffff

    .line 754
    iget-object v0, p0, Landroidx/fragment/app/d;->a:Landroidx/fragment/app/f;

    invoke-virtual {v0}, Landroidx/fragment/app/f;->b()V

    .line 755
    shr-int/lit8 v0, p1, 0x10

    and-int/2addr v0, v3

    .line 756
    if-eqz v0, :cond_0

    .line 757
    add-int/lit8 v1, v0, -0x1

    .line 759
    iget-object v0, p0, Landroidx/fragment/app/d;->j:Landroidx/b/h;

    invoke-virtual {v0, v1}, Landroidx/b/h;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 760
    iget-object v2, p0, Landroidx/fragment/app/d;->j:Landroidx/b/h;

    invoke-virtual {v2, v1}, Landroidx/b/h;->b(I)V

    .line 761
    if-nez v0, :cond_1

    .line 762
    const-string/jumbo v0, "FragmentActivity"

    const-string/jumbo v1, "Activity result delivered for unknown Fragment."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    :cond_0
    :goto_0
    return-void

    .line 765
    :cond_1
    iget-object v1, p0, Landroidx/fragment/app/d;->a:Landroidx/fragment/app/f;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/f;->a(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    .line 766
    if-nez v1, :cond_2

    .line 767
    const-string/jumbo v1, "FragmentActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Activity result no fragment exists for who: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 769
    :cond_2
    and-int v0, p1, v3

    invoke-virtual {v1, v0, p2, p3}, Landroidx/fragment/app/Fragment;->a(I[Ljava/lang/String;[I)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 456
    invoke-super {p0}, Landroidx/activity/b;->onResume()V

    .line 457
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/d;->d:Z

    .line 458
    iget-object v0, p0, Landroidx/fragment/app/d;->a:Landroidx/fragment/app/f;

    invoke-virtual {v0}, Landroidx/fragment/app/f;->b()V

    .line 459
    iget-object v0, p0, Landroidx/fragment/app/d;->a:Landroidx/fragment/app/f;

    invoke-virtual {v0}, Landroidx/fragment/app/f;->l()Z

    .line 460
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 510
    invoke-super {p0, p1}, Landroidx/activity/b;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 511
    invoke-direct {p0}, Landroidx/fragment/app/d;->f()V

    .line 512
    iget-object v0, p0, Landroidx/fragment/app/d;->b:Landroidx/lifecycle/i;

    sget-object v1, Landroidx/lifecycle/e$a;->ON_STOP:Landroidx/lifecycle/e$a;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/i;->a(Landroidx/lifecycle/e$a;)V

    .line 513
    iget-object v0, p0, Landroidx/fragment/app/d;->a:Landroidx/fragment/app/f;

    invoke-virtual {v0}, Landroidx/fragment/app/f;->c()Landroid/os/Parcelable;

    move-result-object v0

    .line 514
    if-eqz v0, :cond_0

    .line 515
    const-string/jumbo v1, "android:support:fragments"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 517
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/d;->j:Landroidx/b/h;

    invoke-virtual {v0}, Landroidx/b/h;->b()I

    move-result v0

    if-lez v0, :cond_2

    .line 518
    const-string/jumbo v0, "android:support:next_request_index"

    iget v1, p0, Landroidx/fragment/app/d;->i:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 520
    iget-object v0, p0, Landroidx/fragment/app/d;->j:Landroidx/b/h;

    invoke-virtual {v0}, Landroidx/b/h;->b()I

    move-result v0

    new-array v2, v0, [I

    .line 521
    iget-object v0, p0, Landroidx/fragment/app/d;->j:Landroidx/b/h;

    invoke-virtual {v0}, Landroidx/b/h;->b()I

    move-result v0

    new-array v3, v0, [Ljava/lang/String;

    .line 522
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Landroidx/fragment/app/d;->j:Landroidx/b/h;

    invoke-virtual {v0}, Landroidx/b/h;->b()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 523
    iget-object v0, p0, Landroidx/fragment/app/d;->j:Landroidx/b/h;

    invoke-virtual {v0, v1}, Landroidx/b/h;->c(I)I

    move-result v0

    aput v0, v2, v1

    .line 524
    iget-object v0, p0, Landroidx/fragment/app/d;->j:Landroidx/b/h;

    invoke-virtual {v0, v1}, Landroidx/b/h;->d(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v3, v1

    .line 522
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 526
    :cond_1
    const-string/jumbo v0, "android:support:request_indicies"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 527
    const-string/jumbo v0, "android:support:request_fragment_who"

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 529
    :cond_2
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 536
    invoke-super {p0}, Landroidx/activity/b;->onStart()V

    .line 538
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/d;->e:Z

    .line 540
    iget-boolean v0, p0, Landroidx/fragment/app/d;->c:Z

    if-nez v0, :cond_0

    .line 541
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/d;->c:Z

    .line 542
    iget-object v0, p0, Landroidx/fragment/app/d;->a:Landroidx/fragment/app/f;

    invoke-virtual {v0}, Landroidx/fragment/app/f;->e()V

    .line 545
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/d;->a:Landroidx/fragment/app/f;

    invoke-virtual {v0}, Landroidx/fragment/app/f;->b()V

    .line 546
    iget-object v0, p0, Landroidx/fragment/app/d;->a:Landroidx/fragment/app/f;

    invoke-virtual {v0}, Landroidx/fragment/app/f;->l()Z

    .line 550
    iget-object v0, p0, Landroidx/fragment/app/d;->b:Landroidx/lifecycle/i;

    sget-object v1, Landroidx/lifecycle/e$a;->ON_START:Landroidx/lifecycle/e$a;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/i;->a(Landroidx/lifecycle/e$a;)V

    .line 551
    iget-object v0, p0, Landroidx/fragment/app/d;->a:Landroidx/fragment/app/f;

    invoke-virtual {v0}, Landroidx/fragment/app/f;->f()V

    .line 552
    return-void
.end method

.method public onStateNotSaved()V
    .locals 1

    .prologue
    .line 446
    iget-object v0, p0, Landroidx/fragment/app/d;->a:Landroidx/fragment/app/f;

    invoke-virtual {v0}, Landroidx/fragment/app/f;->b()V

    .line 447
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 559
    invoke-super {p0}, Landroidx/activity/b;->onStop()V

    .line 561
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/d;->e:Z

    .line 562
    invoke-direct {p0}, Landroidx/fragment/app/d;->f()V

    .line 564
    iget-object v0, p0, Landroidx/fragment/app/d;->a:Landroidx/fragment/app/f;

    invoke-virtual {v0}, Landroidx/fragment/app/f;->i()V

    .line 565
    iget-object v0, p0, Landroidx/fragment/app/d;->b:Landroidx/lifecycle/i;

    sget-object v1, Landroidx/lifecycle/e$a;->ON_STOP:Landroidx/lifecycle/e$a;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/i;->a(Landroidx/lifecycle/e$a;)V

    .line 566
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1
    .param p1    # Landroid/content/Intent;
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "UnknownNullness"
            }
        .end annotation
    .end param

    .prologue
    .line 658
    iget-boolean v0, p0, Landroidx/fragment/app/d;->h:Z

    if-nez v0, :cond_0

    .line 659
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 660
    invoke-static {p2}, Landroidx/fragment/app/d;->c(I)V

    .line 663
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/activity/b;->startActivityForResult(Landroid/content/Intent;I)V

    .line 664
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/content/Intent;
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "UnknownNullness"
            }
        .end annotation
    .end param

    .prologue
    .line 671
    iget-boolean v0, p0, Landroidx/fragment/app/d;->h:Z

    if-nez v0, :cond_0

    .line 672
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 673
    invoke-static {p2}, Landroidx/fragment/app/d;->c(I)V

    .line 676
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroidx/activity/b;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 677
    return-void
.end method

.method public startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    .locals 1
    .param p1    # Landroid/content/IntentSender;
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "UnknownNullness"
            }
        .end annotation
    .end param

    .prologue
    .line 685
    iget-boolean v0, p0, Landroidx/fragment/app/d;->g:Z

    if-nez v0, :cond_0

    .line 686
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 687
    invoke-static {p2}, Landroidx/fragment/app/d;->c(I)V

    .line 690
    :cond_0
    invoke-super/range {p0 .. p6}, Landroidx/activity/b;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    .line 692
    return-void
.end method

.method public startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/content/IntentSender;
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "UnknownNullness"
            }
        .end annotation
    .end param

    .prologue
    .line 700
    iget-boolean v0, p0, Landroidx/fragment/app/d;->g:Z

    if-nez v0, :cond_0

    .line 701
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 702
    invoke-static {p2}, Landroidx/fragment/app/d;->c(I)V

    .line 705
    :cond_0
    invoke-super/range {p0 .. p7}, Landroidx/activity/b;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    .line 707
    return-void
.end method
