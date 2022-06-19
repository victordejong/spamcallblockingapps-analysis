.class Landroidx/lifecycle/p$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/lifecycle/ReportFragment$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/lifecycle/p;


# direct methods
.method constructor <init>(Landroidx/lifecycle/p;)V
    .locals 0

    iput-object p1, p0, Landroidx/lifecycle/p$b;->a:Landroidx/lifecycle/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 1

    iget-object v0, p0, Landroidx/lifecycle/p$b;->a:Landroidx/lifecycle/p;

    invoke-virtual {v0}, Landroidx/lifecycle/p;->e()V

    return-void
.end method

.method public onStart()V
    .locals 1

    iget-object v0, p0, Landroidx/lifecycle/p$b;->a:Landroidx/lifecycle/p;

    invoke-virtual {v0}, Landroidx/lifecycle/p;->f()V

    return-void
.end method
