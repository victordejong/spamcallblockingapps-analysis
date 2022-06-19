.class Landroidx/j/c$8;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ChangeBounds.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/j/c;->a(Landroid/view/ViewGroup;Landroidx/j/s;Landroidx/j/s;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/j/c$a;

.field final synthetic b:Landroidx/j/c;

.field private mViewBounds:Landroidx/j/c$a;


# direct methods
.method constructor <init>(Landroidx/j/c;Landroidx/j/c$a;)V
    .locals 1

    .prologue
    .line 326
    iput-object p1, p0, Landroidx/j/c$8;->b:Landroidx/j/c;

    iput-object p2, p0, Landroidx/j/c$8;->a:Landroidx/j/c$a;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 329
    iget-object v0, p0, Landroidx/j/c$8;->a:Landroidx/j/c$a;

    iput-object v0, p0, Landroidx/j/c$8;->mViewBounds:Landroidx/j/c$a;

    return-void
.end method
