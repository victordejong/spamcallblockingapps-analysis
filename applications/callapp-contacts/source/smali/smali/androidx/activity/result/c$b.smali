.class final Landroidx/activity/result/c$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/activity/result/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field final a:Landroidx/lifecycle/j;

.field private final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/lifecycle/n;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/lifecycle/j;)V
    .locals 0

    .line 434
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 435
    iput-object p1, p0, Landroidx/activity/result/c$b;->a:Landroidx/lifecycle/j;

    .line 436
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/activity/result/c$b;->b:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method final a()V
    .locals 3

    .line 445
    iget-object v0, p0, Landroidx/activity/result/c$b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/n;

    .line 446
    iget-object v2, p0, Landroidx/activity/result/c$b;->a:Landroidx/lifecycle/j;

    invoke-virtual {v2, v1}, Landroidx/lifecycle/j;->removeObserver(Landroidx/lifecycle/o;)V

    goto :goto_0

    .line 448
    :cond_0
    iget-object v0, p0, Landroidx/activity/result/c$b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method final a(Landroidx/lifecycle/n;)V
    .locals 1

    .line 440
    iget-object v0, p0, Landroidx/activity/result/c$b;->a:Landroidx/lifecycle/j;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/j;->addObserver(Landroidx/lifecycle/o;)V

    .line 441
    iget-object v0, p0, Landroidx/activity/result/c$b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
