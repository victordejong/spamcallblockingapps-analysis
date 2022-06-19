.class public final Landroidx/activity/OnBackPressedDispatcher;
.super Ljava/lang/Object;
.source "OnBackPressedDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;,
        Landroidx/activity/OnBackPressedDispatcher$a;
    }
.end annotation


# instance fields
.field final a:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Landroidx/activity/c;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/activity/OnBackPressedDispatcher;-><init>(Ljava/lang/Runnable;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroidx/activity/OnBackPressedDispatcher;->a:Ljava/util/ArrayDeque;

    .line 76
    iput-object p1, p0, Landroidx/activity/OnBackPressedDispatcher;->b:Ljava/lang/Runnable;

    .line 77
    return-void
.end method


# virtual methods
.method a(Landroidx/activity/c;)Landroidx/activity/a;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Landroidx/activity/OnBackPressedDispatcher;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 113
    new-instance v0, Landroidx/activity/OnBackPressedDispatcher$a;

    invoke-direct {v0, p0, p1}, Landroidx/activity/OnBackPressedDispatcher$a;-><init>(Landroidx/activity/OnBackPressedDispatcher;Landroidx/activity/c;)V

    .line 114
    invoke-virtual {p1, v0}, Landroidx/activity/c;->a(Landroidx/activity/a;)V

    .line 115
    return-object v0
.end method

.method public a()V
    .locals 3

    .prologue
    .line 184
    iget-object v0, p0, Landroidx/activity/OnBackPressedDispatcher;->a:Ljava/util/ArrayDeque;

    .line 185
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->descendingIterator()Ljava/util/Iterator;

    move-result-object v1

    .line 186
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 187
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/activity/c;

    .line 188
    invoke-virtual {v0}, Landroidx/activity/c;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 189
    invoke-virtual {v0}, Landroidx/activity/c;->c()V

    .line 196
    :cond_1
    :goto_0
    return-void

    .line 193
    :cond_2
    iget-object v0, p0, Landroidx/activity/OnBackPressedDispatcher;->b:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 194
    iget-object v0, p0, Landroidx/activity/OnBackPressedDispatcher;->b:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public a(Landroidx/lifecycle/h;Landroidx/activity/c;)V
    .locals 3

    .prologue
    .line 145
    invoke-interface {p1}, Landroidx/lifecycle/h;->b()Landroidx/lifecycle/e;

    move-result-object v0

    .line 146
    invoke-virtual {v0}, Landroidx/lifecycle/e;->a()Landroidx/lifecycle/e$b;

    move-result-object v1

    sget-object v2, Landroidx/lifecycle/e$b;->a:Landroidx/lifecycle/e$b;

    if-ne v1, v2, :cond_0

    .line 152
    :goto_0
    return-void

    .line 150
    :cond_0
    new-instance v1, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;

    invoke-direct {v1, p0, v0, p2}, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;-><init>(Landroidx/activity/OnBackPressedDispatcher;Landroidx/lifecycle/e;Landroidx/activity/c;)V

    invoke-virtual {p2, v1}, Landroidx/activity/c;->a(Landroidx/activity/a;)V

    goto :goto_0
.end method
