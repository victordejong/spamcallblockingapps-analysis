.class final Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$d;
.super Ljava/lang/Object;
.source "SearchFragment.kt"

# interfaces
.implements Landroidx/lifecycle/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/ui/search/SearchFragment;->a(Lorg/mistergroup/shouldianswer/ui/a;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/q<",
        "Ljava/util/List<",
        "Lorg/mistergroup/shouldianswer/components/a/a;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lorg/mistergroup/shouldianswer/ui/search/SearchFragment;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/ui/search/SearchFragment;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$d;->a:Lorg/mistergroup/shouldianswer/ui/search/SearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 42
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$d;->a(Ljava/util/List;)V

    return-void
.end method

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

    if-eqz p1, :cond_0

    .line 110
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$d;->a:Lorg/mistergroup/shouldianswer/ui/search/SearchFragment;

    invoke-static {v0}, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment;->b(Lorg/mistergroup/shouldianswer/ui/search/SearchFragment;)Lorg/mistergroup/shouldianswer/ui/search/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/mistergroup/shouldianswer/ui/search/a;->a(Ljava/util/List;)V

    :cond_0
    return-void
.end method
