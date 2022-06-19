.class public final Lorg/mistergroup/shouldianswer/ui/main/a;
.super Landroidx/lifecycle/u;
.source "MainActivityViewModel.kt"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/mistergroup/shouldianswer/components/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/mistergroup/shouldianswer/components/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/mistergroup/shouldianswer/components/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lorg/mistergroup/shouldianswer/components/a/a;

.field private e:Lorg/mistergroup/shouldianswer/ui/search/d;

.field private f:Lorg/mistergroup/shouldianswer/ui/main/c/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Landroidx/lifecycle/u;-><init>()V

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lorg/mistergroup/shouldianswer/ui/main/a;->a:Ljava/util/List;

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lorg/mistergroup/shouldianswer/ui/main/a;->b:Ljava/util/List;

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lorg/mistergroup/shouldianswer/ui/main/a;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/mistergroup/shouldianswer/components/a/a;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/a;->a:Ljava/util/List;

    return-void
.end method

.method public final a(Lorg/mistergroup/shouldianswer/components/a/a;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/a;->d:Lorg/mistergroup/shouldianswer/components/a/a;

    return-void
.end method

.method public final a(Lorg/mistergroup/shouldianswer/ui/main/c/c;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/a;->f:Lorg/mistergroup/shouldianswer/ui/main/c/c;

    return-void
.end method

.method public final a(Lorg/mistergroup/shouldianswer/ui/search/d;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/a;->e:Lorg/mistergroup/shouldianswer/ui/search/d;

    return-void
.end method

.method public final b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/mistergroup/shouldianswer/components/a/a;",
            ">;"
        }
    .end annotation

    .line 11
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/main/a;->a:Ljava/util/List;

    return-object v0
.end method

.method public final b(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/mistergroup/shouldianswer/components/a/a;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/a;->b:Ljava/util/List;

    return-void
.end method

.method public final c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/mistergroup/shouldianswer/components/a/a;",
            ">;"
        }
    .end annotation

    .line 12
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/main/a;->b:Ljava/util/List;

    return-object v0
.end method

.method public final c(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/mistergroup/shouldianswer/components/a/a;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/a;->c:Ljava/util/List;

    return-void
.end method

.method public final e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/mistergroup/shouldianswer/components/a/a;",
            ">;"
        }
    .end annotation

    .line 13
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/main/a;->c:Ljava/util/List;

    return-object v0
.end method

.method public final f()Lorg/mistergroup/shouldianswer/components/a/a;
    .locals 1

    .line 14
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/main/a;->d:Lorg/mistergroup/shouldianswer/components/a/a;

    return-object v0
.end method

.method public final g()Lorg/mistergroup/shouldianswer/ui/search/d;
    .locals 1

    .line 15
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/main/a;->e:Lorg/mistergroup/shouldianswer/ui/search/d;

    return-object v0
.end method

.method public final h()Lorg/mistergroup/shouldianswer/ui/main/c/c;
    .locals 1

    .line 16
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/main/a;->f:Lorg/mistergroup/shouldianswer/ui/main/c/c;

    return-object v0
.end method
