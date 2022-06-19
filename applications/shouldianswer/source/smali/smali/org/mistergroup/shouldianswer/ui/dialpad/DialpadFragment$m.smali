.class final Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$m;
.super Ljava/lang/Object;
.source "DialpadFragment.kt"

# interfaces
.implements Landroidx/lifecycle/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;->a(Lorg/mistergroup/shouldianswer/ui/a;Landroid/os/Bundle;)V
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
.field final synthetic a:Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$m;->a:Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 35
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$m;->a(Ljava/util/List;)V

    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/mistergroup/shouldianswer/components/a/a;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 147
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$m;->a:Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;

    invoke-static {v0}, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;->e(Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;)Lorg/mistergroup/shouldianswer/ui/main/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/mistergroup/shouldianswer/ui/main/a;->b(Ljava/util/List;)V

    .line 148
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$m;->a:Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;

    invoke-static {v0}, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;->f(Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;)Lorg/mistergroup/shouldianswer/components/a/e;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, p1, v1, v2, v3}, Lorg/mistergroup/shouldianswer/components/a/e;->a(Lorg/mistergroup/shouldianswer/components/a/e;Ljava/util/List;ZILjava/lang/Object;)V

    :cond_0
    return-void
.end method
