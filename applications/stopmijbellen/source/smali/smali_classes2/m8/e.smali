.class public final synthetic Lm8/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p3, p0, Lm8/e;->a:I

    iput-object p1, p0, Lm8/e;->b:Ljava/lang/Object;

    iput-object p2, p0, Lm8/e;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget p1, p0, Lm8/e;->a:I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p1, p0, Lm8/e;->b:Ljava/lang/Object;

    check-cast p1, Lm8/g;

    iget-object v0, p0, Lm8/e;->c:Ljava/lang/Object;

    check-cast v0, Lm8/d;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    .line 1
    invoke-virtual {v0, v1}, Lm8/d;->h(Z)V

    .line 2
    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    return-void

    .line 3
    :goto_0
    iget-object p1, p0, Lm8/e;->b:Ljava/lang/Object;

    check-cast p1, Lcom/mglab/scm/visual/c;

    iget-object v0, p0, Lm8/e;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/appcompat/widget/SwitchCompat;

    .line 4
    invoke-virtual {p1, v0}, Lcom/mglab/scm/visual/c;->o(Landroidx/appcompat/widget/SwitchCompat;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
