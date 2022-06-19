.class Landroidx/j/d$1;
.super Landroidx/j/n;
.source "Fade.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/j/d;->a(Landroid/view/View;FF)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Landroidx/j/d;


# direct methods
.method constructor <init>(Landroidx/j/d;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Landroidx/j/d$1;->b:Landroidx/j/d;

    iput-object p2, p0, Landroidx/j/d$1;->a:Landroid/view/View;

    invoke-direct {p0}, Landroidx/j/n;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroidx/j/m;)V
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Landroidx/j/d$1;->a:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Landroidx/j/ac;->a(Landroid/view/View;F)V

    .line 139
    iget-object v0, p0, Landroidx/j/d$1;->a:Landroid/view/View;

    invoke-static {v0}, Landroidx/j/ac;->e(Landroid/view/View;)V

    .line 140
    invoke-virtual {p1, p0}, Landroidx/j/m;->b(Landroidx/j/m$c;)Landroidx/j/m;

    .line 141
    return-void
.end method
