.class final Landroidx/fragment/app/b$c;
.super Landroidx/fragment/app/b$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field final c:Ljava/lang/Object;

.field final d:Z

.field final e:Ljava/lang/Object;


# direct methods
.method constructor <init>(Landroidx/fragment/app/z$b;Landroidx/core/os/a;ZZ)V
    .locals 1

    .line 821
    invoke-direct {p0, p1, p2}, Landroidx/fragment/app/b$b;-><init>(Landroidx/fragment/app/z$b;Landroidx/core/os/a;)V

    .line 1539
    iget-object p2, p1, Landroidx/fragment/app/z$b;->a:Landroidx/fragment/app/z$b$b;

    .line 822
    sget-object v0, Landroidx/fragment/app/z$b$b;->VISIBLE:Landroidx/fragment/app/z$b$b;

    if-ne p2, v0, :cond_2

    if-eqz p3, :cond_0

    .line 1558
    iget-object p2, p1, Landroidx/fragment/app/z$b;->c:Landroidx/fragment/app/Fragment;

    .line 824
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getReenterTransition()Ljava/lang/Object;

    move-result-object p2

    goto :goto_0

    .line 2558
    :cond_0
    iget-object p2, p1, Landroidx/fragment/app/z$b;->c:Landroidx/fragment/app/Fragment;

    .line 825
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getEnterTransition()Ljava/lang/Object;

    move-result-object p2

    :goto_0
    iput-object p2, p0, Landroidx/fragment/app/b$c;->c:Ljava/lang/Object;

    if-eqz p3, :cond_1

    .line 3558
    iget-object p2, p1, Landroidx/fragment/app/z$b;->c:Landroidx/fragment/app/Fragment;

    .line 829
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getAllowReturnTransitionOverlap()Z

    move-result p2

    goto :goto_1

    .line 4558
    :cond_1
    iget-object p2, p1, Landroidx/fragment/app/z$b;->c:Landroidx/fragment/app/Fragment;

    .line 830
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getAllowEnterTransitionOverlap()Z

    move-result p2

    :goto_1
    iput-boolean p2, p0, Landroidx/fragment/app/b$c;->d:Z

    goto :goto_3

    :cond_2
    if-eqz p3, :cond_3

    .line 5558
    iget-object p2, p1, Landroidx/fragment/app/z$b;->c:Landroidx/fragment/app/Fragment;

    .line 833
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getReturnTransition()Ljava/lang/Object;

    move-result-object p2

    goto :goto_2

    .line 6558
    :cond_3
    iget-object p2, p1, Landroidx/fragment/app/z$b;->c:Landroidx/fragment/app/Fragment;

    .line 834
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getExitTransition()Ljava/lang/Object;

    move-result-object p2

    :goto_2
    iput-object p2, p0, Landroidx/fragment/app/b$c;->c:Ljava/lang/Object;

    const/4 p2, 0x1

    .line 836
    iput-boolean p2, p0, Landroidx/fragment/app/b$c;->d:Z

    :goto_3
    if-eqz p4, :cond_5

    if-eqz p3, :cond_4

    .line 7558
    iget-object p1, p1, Landroidx/fragment/app/z$b;->c:Landroidx/fragment/app/Fragment;

    .line 841
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getSharedElementReturnTransition()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Landroidx/fragment/app/b$c;->e:Ljava/lang/Object;

    return-void

    .line 8558
    :cond_4
    iget-object p1, p1, Landroidx/fragment/app/z$b;->c:Landroidx/fragment/app/Fragment;

    .line 844
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getSharedElementEnterTransition()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Landroidx/fragment/app/b$c;->e:Ljava/lang/Object;

    return-void

    :cond_5
    const/4 p1, 0x0

    .line 847
    iput-object p1, p0, Landroidx/fragment/app/b$c;->e:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method final a(Ljava/lang/Object;)Landroidx/fragment/app/v;
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 891
    :cond_0
    sget-object v0, Landroidx/fragment/app/t;->a:Landroidx/fragment/app/v;

    if-eqz v0, :cond_1

    sget-object v0, Landroidx/fragment/app/t;->a:Landroidx/fragment/app/v;

    .line 892
    invoke-virtual {v0, p1}, Landroidx/fragment/app/v;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 893
    sget-object p1, Landroidx/fragment/app/t;->a:Landroidx/fragment/app/v;

    return-object p1

    .line 895
    :cond_1
    sget-object v0, Landroidx/fragment/app/t;->b:Landroidx/fragment/app/v;

    if-eqz v0, :cond_2

    sget-object v0, Landroidx/fragment/app/t;->b:Landroidx/fragment/app/v;

    .line 896
    invoke-virtual {v0, p1}, Landroidx/fragment/app/v;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 897
    sget-object p1, Landroidx/fragment/app/t;->b:Landroidx/fragment/app/v;

    return-object p1

    .line 899
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Transition "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " for fragment "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8763
    iget-object p1, p0, Landroidx/fragment/app/b$b;->a:Landroidx/fragment/app/z$b;

    .line 9558
    iget-object p1, p1, Landroidx/fragment/app/z$b;->c:Landroidx/fragment/app/Fragment;

    .line 900
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not a valid framework Transition or AndroidX Transition"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
