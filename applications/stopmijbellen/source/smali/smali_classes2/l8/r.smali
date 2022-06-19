.class public final synthetic Ll8/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ll8/w;

.field public final synthetic c:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Ll8/w;Landroid/view/View;I)V
    .locals 0

    .line 1
    iput p3, p0, Ll8/r;->a:I

    iput-object p1, p0, Ll8/r;->b:Ll8/w;

    iput-object p2, p0, Ll8/r;->c:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget p1, p0, Ll8/r;->a:I

    const/4 v0, 0x2

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p1, p0, Ll8/r;->b:Ll8/w;

    iget-object v1, p0, Ll8/r;->c:Landroid/view/View;

    .line 1
    invoke-virtual {p1, v0}, Ll8/w;->c(I)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v0, v2}, Ll8/w;->j(IZ)V

    .line 2
    invoke-virtual {p1, v1}, Ll8/w;->o(Landroid/view/View;)Ll8/w;

    return-void

    .line 3
    :pswitch_1
    iget-object p1, p0, Ll8/r;->b:Ll8/w;

    iget-object v1, p0, Ll8/r;->c:Landroid/view/View;

    .line 4
    invoke-virtual {p1, v0}, Ll8/w;->f(I)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 5
    invoke-virtual {p1, v0, v2}, Ll8/w;->l(IZ)V

    .line 6
    invoke-virtual {p1, v1}, Ll8/w;->o(Landroid/view/View;)Ll8/w;

    return-void

    .line 7
    :goto_0
    iget-object p1, p0, Ll8/r;->b:Ll8/w;

    iget-object v0, p0, Ll8/r;->c:Landroid/view/View;

    const/4 v1, 0x6

    .line 8
    invoke-virtual {p1, v1}, Ll8/w;->c(I)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v1, v2}, Ll8/w;->j(IZ)V

    .line 9
    invoke-virtual {p1, v0}, Ll8/w;->o(Landroid/view/View;)Ll8/w;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
