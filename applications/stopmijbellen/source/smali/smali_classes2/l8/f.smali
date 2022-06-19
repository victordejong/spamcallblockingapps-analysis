.class public final synthetic Ll8/f;
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
    iput p3, p0, Ll8/f;->a:I

    iput-object p1, p0, Ll8/f;->b:Ll8/w;

    iput-object p2, p0, Ll8/f;->c:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    iget p1, p0, Ll8/f;->a:I

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object p1, p0, Ll8/f;->b:Ll8/w;

    iget-object v0, p0, Ll8/f;->c:Landroid/view/View;

    const/4 v1, 0x1

    .line 1
    invoke-virtual {p1, v1, p2}, Ll8/w;->l(IZ)V

    .line 2
    invoke-virtual {p1, v0}, Ll8/w;->o(Landroid/view/View;)Ll8/w;

    return-void

    .line 3
    :pswitch_1
    iget-object p1, p0, Ll8/f;->b:Ll8/w;

    iget-object v0, p0, Ll8/f;->c:Landroid/view/View;

    .line 4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_0

    iget-object v1, p1, Ll8/w;->a:Landroid/content/Context;

    invoke-static {v1}, Lf8/g;->b(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p2, :cond_1

    .line 5
    invoke-static {}, Lba/b;->b()Lba/b;

    move-result-object p1

    new-instance p2, Lk8/o;

    const/4 v0, 0x4

    invoke-direct {p2, v0}, Lk8/o;-><init>(I)V

    invoke-virtual {p1, p2}, Lba/b;->g(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/16 v1, 0xc

    .line 6
    invoke-virtual {p1, v1, p2}, Ll8/w;->l(IZ)V

    .line 7
    invoke-virtual {p1, v0}, Ll8/w;->o(Landroid/view/View;)Ll8/w;

    :cond_1
    :goto_0
    return-void

    .line 8
    :goto_1
    iget-object p1, p0, Ll8/f;->b:Ll8/w;

    iget-object v0, p0, Ll8/f;->c:Landroid/view/View;

    const/4 v1, 0x7

    .line 9
    invoke-virtual {p1, v1, p2}, Ll8/w;->l(IZ)V

    if-eqz p2, :cond_2

    const/16 p2, 0x9

    const/4 v1, 0x0

    .line 10
    invoke-virtual {p1, p2, v1}, Ll8/w;->l(IZ)V

    .line 11
    :cond_2
    invoke-virtual {p1, v0}, Ll8/w;->o(Landroid/view/View;)Ll8/w;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
