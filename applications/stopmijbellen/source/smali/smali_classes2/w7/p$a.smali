.class public Lw7/p$a;
.super Lm7/j;
.source "SourceFile"

# interfaces
.implements Lc8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw7/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lm7/j<",
        "TT;",
        "Lw7/q$a;",
        ">;",
        "Lc8/a<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public j:Ln7/h;

.field public k:Ljava/lang/Runnable;

.field public l:Lk7/m;

.field public final synthetic m:Lw7/p;


# direct methods
.method public constructor <init>(Lw7/p;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lw7/p$a;->m:Lw7/p;

    invoke-direct {p0}, Lm7/j;-><init>()V

    .line 2
    iput-object p2, p0, Lw7/p$a;->k:Ljava/lang/Runnable;

    .line 3
    iget-object p2, p1, Lw7/p;->a:Lw7/e;

    iget-object p1, p1, Lw7/p;->b:Lw7/g;

    check-cast p1, Lw7/c$b;

    .line 4
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    .line 5
    invoke-virtual {p2, p0, p1}, Lw7/e;->a(Lm7/c;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lw7/p$a;->l:Lk7/m;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lk7/m;->close()V

    .line 3
    :cond_0
    iget-object v0, p0, Lw7/p$a;->k:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method
