.class public Ley$h$c$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ley$h$c;->b(Ley$h$f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ley$h$c;


# direct methods
.method public constructor <init>(Ley$h$c;)V
    .locals 0

    iput-object p1, p0, Ley$h$c$a;->a:Ley$h$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Ley$h$c$a;->a:Ley$h$c;

    iget-object v0, p1, Ley$h$c;->g:Ley$h;

    iget-object v0, v0, Ley$h;->j:Ley;

    iget-object v0, v0, Ley;->a:Ldz;

    iget-object p1, p1, Ley$h$c;->f:Ldz$i;

    invoke-virtual {v0, p1}, Ldz;->q(Ldz$i;)V

    iget-object p1, p0, Ley$h$c$a;->a:Ley$h$c;

    iget-object p1, p1, Ley$h$c;->b:Landroid/widget/ImageView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Ley$h$c$a;->a:Ley$h$c;

    iget-object p1, p1, Ley$h$c;->c:Landroid/widget/ProgressBar;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method
