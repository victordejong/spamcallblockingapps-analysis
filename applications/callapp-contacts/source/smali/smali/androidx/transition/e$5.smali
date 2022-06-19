.class final Landroidx/transition/e$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/transition/Transition$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/transition/e;->a(Ljava/lang/Object;Landroidx/core/os/a;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Landroidx/transition/e;


# direct methods
.method constructor <init>(Landroidx/transition/e;Ljava/lang/Runnable;)V
    .locals 0

    .line 274
    iput-object p1, p0, Landroidx/transition/e$5;->b:Landroidx/transition/e;

    iput-object p2, p0, Landroidx/transition/e$5;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final a(Landroidx/transition/Transition;)V
    .locals 0

    .line 280
    iget-object p1, p0, Landroidx/transition/e$5;->a:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public final b()V
    .locals 0

    return-void
.end method

.method public final b(Landroidx/transition/Transition;)V
    .locals 0

    return-void
.end method

.method public final c()V
    .locals 0

    return-void
.end method
