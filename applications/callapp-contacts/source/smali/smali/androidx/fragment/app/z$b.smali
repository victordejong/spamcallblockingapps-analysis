.class Landroidx/fragment/app/z$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/fragment/app/z$b$a;,
        Landroidx/fragment/app/z$b$b;
    }
.end annotation


# instance fields
.field a:Landroidx/fragment/app/z$b$b;

.field b:Landroidx/fragment/app/z$b$a;

.field final c:Landroidx/fragment/app/Fragment;

.field d:Z

.field e:Z

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroidx/core/os/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/fragment/app/z$b$b;Landroidx/fragment/app/z$b$a;Landroidx/fragment/app/Fragment;Landroidx/core/os/a;)V
    .locals 1

    .line 519
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 502
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/z$b;->f:Ljava/util/List;

    .line 504
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/z$b;->g:Ljava/util/HashSet;

    const/4 v0, 0x0

    .line 507
    iput-boolean v0, p0, Landroidx/fragment/app/z$b;->d:Z

    .line 508
    iput-boolean v0, p0, Landroidx/fragment/app/z$b;->e:Z

    .line 520
    iput-object p1, p0, Landroidx/fragment/app/z$b;->a:Landroidx/fragment/app/z$b$b;

    .line 521
    iput-object p2, p0, Landroidx/fragment/app/z$b;->b:Landroidx/fragment/app/z$b$a;

    .line 522
    iput-object p3, p0, Landroidx/fragment/app/z$b;->c:Landroidx/fragment/app/Fragment;

    .line 524
    new-instance p1, Landroidx/fragment/app/z$b$1;

    invoke-direct {p1, p0}, Landroidx/fragment/app/z$b$1;-><init>(Landroidx/fragment/app/z$b;)V

    invoke-virtual {p4, p1}, Landroidx/core/os/a;->a(Landroidx/core/os/a$a;)V

    return-void
.end method


# virtual methods
.method a()V
    .locals 0

    return-void
.end method

.method public final a(Landroidx/core/os/a;)V
    .locals 1

    .line 656
    invoke-virtual {p0}, Landroidx/fragment/app/z$b;->a()V

    .line 657
    iget-object v0, p0, Landroidx/fragment/app/z$b;->g:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method final a(Landroidx/fragment/app/z$b$b;Landroidx/fragment/app/z$b$a;)V
    .locals 4

    .line 604
    sget-object v0, Landroidx/fragment/app/z$3;->b:[I

    invoke-virtual {p2}, Landroidx/fragment/app/z$b$a;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    const-string v1, "SpecialEffectsController: For fragment "

    const/4 v2, 0x2

    if-eq p2, v0, :cond_4

    const-string v0, " mFinalState = "

    if-eq p2, v2, :cond_2

    const/4 v3, 0x3

    if-eq p2, v3, :cond_0

    goto/16 :goto_0

    .line 630
    :cond_0
    iget-object p2, p0, Landroidx/fragment/app/z$b;->a:Landroidx/fragment/app/z$b$b;

    sget-object v3, Landroidx/fragment/app/z$b$b;->REMOVED:Landroidx/fragment/app/z$b$b;

    if-eq p2, v3, :cond_6

    .line 631
    invoke-static {v2}, Landroidx/fragment/app/FragmentManager;->a(I)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 632
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/fragment/app/z$b;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroidx/fragment/app/z$b;->a:Landroidx/fragment/app/z$b$b;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " -> "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ". "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 636
    :cond_1
    iput-object p1, p0, Landroidx/fragment/app/z$b;->a:Landroidx/fragment/app/z$b$b;

    goto :goto_0

    .line 619
    :cond_2
    invoke-static {v2}, Landroidx/fragment/app/FragmentManager;->a(I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 620
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Landroidx/fragment/app/z$b;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Landroidx/fragment/app/z$b;->a:Landroidx/fragment/app/z$b$b;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " -> REMOVED. mLifecycleImpact  = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Landroidx/fragment/app/z$b;->b:Landroidx/fragment/app/z$b$a;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " to REMOVING."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 625
    :cond_3
    sget-object p1, Landroidx/fragment/app/z$b$b;->REMOVED:Landroidx/fragment/app/z$b$b;

    iput-object p1, p0, Landroidx/fragment/app/z$b;->a:Landroidx/fragment/app/z$b$b;

    .line 626
    sget-object p1, Landroidx/fragment/app/z$b$a;->REMOVING:Landroidx/fragment/app/z$b$a;

    iput-object p1, p0, Landroidx/fragment/app/z$b;->b:Landroidx/fragment/app/z$b$a;

    return-void

    .line 606
    :cond_4
    iget-object p1, p0, Landroidx/fragment/app/z$b;->a:Landroidx/fragment/app/z$b$b;

    sget-object p2, Landroidx/fragment/app/z$b$b;->REMOVED:Landroidx/fragment/app/z$b$b;

    if-ne p1, p2, :cond_6

    .line 607
    invoke-static {v2}, Landroidx/fragment/app/FragmentManager;->a(I)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 608
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Landroidx/fragment/app/z$b;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " mFinalState = REMOVED -> VISIBLE. mLifecycleImpact = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Landroidx/fragment/app/z$b;->b:Landroidx/fragment/app/z$b$a;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " to ADDING."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 614
    :cond_5
    sget-object p1, Landroidx/fragment/app/z$b$b;->VISIBLE:Landroidx/fragment/app/z$b$b;

    iput-object p1, p0, Landroidx/fragment/app/z$b;->a:Landroidx/fragment/app/z$b$b;

    .line 615
    sget-object p1, Landroidx/fragment/app/z$b$a;->ADDING:Landroidx/fragment/app/z$b$a;

    iput-object p1, p0, Landroidx/fragment/app/z$b;->b:Landroidx/fragment/app/z$b$a;

    :cond_6
    :goto_0
    return-void
.end method

.method final a(Ljava/lang/Runnable;)V
    .locals 1

    .line 642
    iget-object v0, p0, Landroidx/fragment/app/z$b;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b()V
    .locals 2

    .line 683
    iget-boolean v0, p0, Landroidx/fragment/app/z$b;->e:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    .line 686
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 687
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SpecialEffectsController: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " has called complete."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const/4 v0, 0x1

    .line 690
    iput-boolean v0, p0, Landroidx/fragment/app/z$b;->e:Z

    .line 691
    iget-object v0, p0, Landroidx/fragment/app/z$b;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 692
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final b(Landroidx/core/os/a;)V
    .locals 1

    .line 668
    iget-object v0, p0, Landroidx/fragment/app/z$b;->g:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/fragment/app/z$b;->g:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 669
    invoke-virtual {p0}, Landroidx/fragment/app/z$b;->b()V

    :cond_0
    return-void
.end method

.method final c()V
    .locals 2

    .line 1562
    iget-boolean v0, p0, Landroidx/fragment/app/z$b;->d:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 592
    iput-boolean v0, p0, Landroidx/fragment/app/z$b;->d:Z

    .line 593
    iget-object v0, p0, Landroidx/fragment/app/z$b;->g:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 594
    invoke-virtual {p0}, Landroidx/fragment/app/z$b;->b()V

    return-void

    .line 596
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/fragment/app/z$b;->g:Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 597
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/core/os/a;

    .line 598
    invoke-virtual {v1}, Landroidx/core/os/a;->b()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 568
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Operation "

    .line 569
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{"

    .line 570
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 571
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "} "

    .line 572
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 573
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "mFinalState = "

    .line 574
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 575
    iget-object v3, p0, Landroidx/fragment/app/z$b;->a:Landroidx/fragment/app/z$b$b;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 576
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 577
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "mLifecycleImpact = "

    .line 578
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 579
    iget-object v3, p0, Landroidx/fragment/app/z$b;->b:Landroidx/fragment/app/z$b$a;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 580
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 581
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mFragment = "

    .line 582
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 583
    iget-object v1, p0, Landroidx/fragment/app/z$b;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 584
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 585
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
