.class public Ll1/c$a;
.super Ll1/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ll1/c;->K(Landroid/view/View;FF)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/view/View;


# direct methods
.method public constructor <init>(Ll1/c;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p2, p0, Ll1/c$a;->a:Landroid/view/View;

    invoke-direct {p0}, Ll1/j;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Ll1/g;)V
    .locals 3

    .line 1
    iget-object v0, p0, Ll1/c$a;->a:Landroid/view/View;

    .line 2
    sget-object v1, Ll1/q;->a:Ly/d;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v0, v2}, Ly/d;->l(Landroid/view/View;F)V

    .line 3
    iget-object v0, p0, Ll1/c$a;->a:Landroid/view/View;

    .line 4
    invoke-virtual {v1, v0}, Ly/d;->d(Landroid/view/View;)V

    .line 5
    invoke-virtual {p1, p0}, Ll1/g;->v(Ll1/g$d;)Ll1/g;

    return-void
.end method
