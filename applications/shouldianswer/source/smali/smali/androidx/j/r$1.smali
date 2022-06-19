.class Landroidx/j/r$1;
.super Landroidx/j/o;
.source "TransitionSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/j/r;->runAnimators()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/j/n;

.field final synthetic b:Landroidx/j/r;


# direct methods
.method constructor <init>(Landroidx/j/r;Landroidx/j/n;)V
    .locals 0

    .line 493
    iput-object p1, p0, Landroidx/j/r$1;->b:Landroidx/j/r;

    iput-object p2, p0, Landroidx/j/r$1;->a:Landroidx/j/n;

    invoke-direct {p0}, Landroidx/j/o;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroidx/j/n;)V
    .locals 1

    .line 496
    iget-object v0, p0, Landroidx/j/r$1;->a:Landroidx/j/n;

    invoke-virtual {v0}, Landroidx/j/n;->runAnimators()V

    .line 497
    invoke-virtual {p1, p0}, Landroidx/j/n;->removeListener(Landroidx/j/n$d;)Landroidx/j/n;

    return-void
.end method
