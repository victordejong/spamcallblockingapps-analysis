.class Landroidx/j/q$1;
.super Landroidx/j/n;
.source "TransitionSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/j/q;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/j/m;

.field final synthetic b:Landroidx/j/q;


# direct methods
.method constructor <init>(Landroidx/j/q;Landroidx/j/m;)V
    .locals 0

    .prologue
    .line 503
    iput-object p1, p0, Landroidx/j/q$1;->b:Landroidx/j/q;

    iput-object p2, p0, Landroidx/j/q$1;->a:Landroidx/j/m;

    invoke-direct {p0}, Landroidx/j/n;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroidx/j/m;)V
    .locals 1

    .prologue
    .line 506
    iget-object v0, p0, Landroidx/j/q$1;->a:Landroidx/j/m;

    invoke-virtual {v0}, Landroidx/j/m;->e()V

    .line 507
    invoke-virtual {p1, p0}, Landroidx/j/m;->b(Landroidx/j/m$c;)Landroidx/j/m;

    .line 508
    return-void
.end method
