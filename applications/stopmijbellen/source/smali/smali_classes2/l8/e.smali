.class public final synthetic Ll8/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ll8/w;

.field public final synthetic c:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Ll8/w;Landroid/view/View;I)V
    .locals 0

    .line 1
    iput p3, p0, Ll8/e;->a:I

    iput-object p1, p0, Ll8/e;->b:Ll8/w;

    iput-object p2, p0, Ll8/e;->c:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    iget p1, p0, Ll8/e;->a:I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p1, p0, Ll8/e;->b:Ll8/w;

    iget-object v0, p0, Ll8/e;->c:Landroid/view/View;

    const/16 v1, 0xe

    .line 1
    invoke-virtual {p1, v1, p2}, Ll8/w;->l(IZ)V

    .line 2
    invoke-virtual {p1, v0}, Ll8/w;->o(Landroid/view/View;)Ll8/w;

    return-void

    .line 3
    :goto_0
    iget-object p1, p0, Ll8/e;->b:Ll8/w;

    iget-object v0, p0, Ll8/e;->c:Landroid/view/View;

    const/16 v1, 0x9

    .line 4
    invoke-virtual {p1, v1, p2}, Ll8/w;->l(IZ)V

    if-eqz p2, :cond_0

    const/4 p2, 0x7

    const/4 v1, 0x0

    .line 5
    invoke-virtual {p1, p2, v1}, Ll8/w;->l(IZ)V

    .line 6
    :cond_0
    invoke-virtual {p1, v0}, Ll8/w;->o(Landroid/view/View;)Ll8/w;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
