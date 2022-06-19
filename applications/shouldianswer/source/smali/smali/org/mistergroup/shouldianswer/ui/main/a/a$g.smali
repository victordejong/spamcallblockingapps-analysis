.class final Lorg/mistergroup/shouldianswer/ui/main/a/a$g;
.super Ljava/lang/Object;
.source "ContactsFragment.kt"

# interfaces
.implements Landroidx/lifecycle/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/ui/main/a/a;->c()V
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
.field final synthetic a:Lorg/mistergroup/shouldianswer/ui/main/a/a;

.field final synthetic b:Lorg/mistergroup/shouldianswer/ui/main/a;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/ui/main/a/a;Lorg/mistergroup/shouldianswer/ui/main/a;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/a/a$g;->a:Lorg/mistergroup/shouldianswer/ui/main/a/a;

    iput-object p2, p0, Lorg/mistergroup/shouldianswer/ui/main/a/a$g;->b:Lorg/mistergroup/shouldianswer/ui/main/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 39
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lorg/mistergroup/shouldianswer/ui/main/a/a$g;->a(Ljava/util/List;)V

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

    .line 223
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/main/a/a$g;->b:Lorg/mistergroup/shouldianswer/ui/main/a;

    invoke-virtual {v0, p1}, Lorg/mistergroup/shouldianswer/ui/main/a;->a(Ljava/util/List;)V

    .line 224
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/main/a/a$g;->a:Lorg/mistergroup/shouldianswer/ui/main/a/a;

    invoke-static {v0}, Lorg/mistergroup/shouldianswer/ui/main/a/a;->b(Lorg/mistergroup/shouldianswer/ui/main/a/a;)Lorg/mistergroup/shouldianswer/components/a/e;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, p1, v3, v1, v2}, Lorg/mistergroup/shouldianswer/components/a/e;->a(Lorg/mistergroup/shouldianswer/components/a/e;Ljava/util/List;ZILjava/lang/Object;)V

    .line 225
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/a/a$g;->a:Lorg/mistergroup/shouldianswer/ui/main/a/a;

    invoke-static {p1}, Lorg/mistergroup/shouldianswer/ui/main/a/a;->e(Lorg/mistergroup/shouldianswer/ui/main/a/a;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 226
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/a/a$g;->a:Lorg/mistergroup/shouldianswer/ui/main/a/a;

    invoke-static {p1}, Lorg/mistergroup/shouldianswer/ui/main/a/a;->c(Lorg/mistergroup/shouldianswer/ui/main/a/a;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPosition(I)V

    .line 227
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/a/a$g;->a:Lorg/mistergroup/shouldianswer/ui/main/a/a;

    invoke-static {p1, v3}, Lorg/mistergroup/shouldianswer/ui/main/a/a;->a(Lorg/mistergroup/shouldianswer/ui/main/a/a;Z)V

    .line 230
    :cond_0
    sget-object p1, Lorg/mistergroup/shouldianswer/ui/main/MainFragment;->b:Lorg/mistergroup/shouldianswer/ui/main/MainFragment$b;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/ui/main/MainFragment$b;->a()Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/mistergroup/shouldianswer/ui/main/MainFragment;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/ui/main/MainFragment;->c()V

    .line 231
    :cond_1
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/a/a$g;->a:Lorg/mistergroup/shouldianswer/ui/main/a/a;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/ui/main/a/a;->d()V

    return-void
.end method
