.class public Ldy$d$c$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldy$d$c;->b(Ldy$d$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ldz$i;

.field public final synthetic b:Ldy$d$c;


# direct methods
.method public constructor <init>(Ldy$d$c;Ldz$i;)V
    .locals 0

    iput-object p1, p0, Ldy$d$c$a;->b:Ldy$d$c;

    iput-object p2, p0, Ldy$d$c$a;->a:Ldz$i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Ldy$d$c$a;->b:Ldy$d$c;

    iget-object p1, p1, Ldy$d$c;->e:Ldy$d;

    iget-object p1, p1, Ldy$d;->g:Ldy;

    iget-object v0, p0, Ldy$d$c$a;->a:Ldz$i;

    iput-object v0, p1, Ldy;->l:Ldz$i;

    invoke-virtual {v0}, Ldz$i;->H()V

    iget-object p1, p0, Ldy$d$c$a;->b:Ldy$d$c;

    iget-object p1, p1, Ldy$d$c;->b:Landroid/widget/ImageView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Ldy$d$c$a;->b:Ldy$d$c;

    iget-object p1, p1, Ldy$d$c;->c:Landroid/widget/ProgressBar;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method
