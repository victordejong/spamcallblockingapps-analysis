.class public final synthetic Lm8/f;
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
    iput p3, p0, Lm8/f;->a:I

    iput-object p1, p0, Lm8/f;->b:Ljava/lang/Object;

    iput-object p2, p0, Lm8/f;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget p1, p0, Lm8/f;->a:I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p1, p0, Lm8/f;->b:Ljava/lang/Object;

    check-cast p1, Le2/g;

    iget-object v0, p0, Lm8/f;->c:Ljava/lang/Object;

    check-cast v0, Landroid/widget/CheckBox;

    .line 1
    sget-object v1, Le2/b;->c:Le2/b;

    invoke-virtual {p1, v1}, Le2/g;->c(Le2/b;)Lcom/afollestad/materialdialogs/internal/MDButton;

    move-result-object p1

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void

    .line 2
    :pswitch_1
    iget-object p1, p0, Lm8/f;->b:Ljava/lang/Object;

    check-cast p1, Lm8/g;

    iget-object v0, p0, Lm8/f;->c:Ljava/lang/Object;

    check-cast v0, Lm8/d;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Lm8/d;->h(Z)V

    .line 4
    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    return-void

    .line 5
    :goto_0
    iget-object p1, p0, Lm8/f;->b:Ljava/lang/Object;

    check-cast p1, Lcom/mglab/scm/visual/c;

    iget-object v0, p0, Lm8/f;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/appcompat/widget/SwitchCompat;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 7
    iget-object v1, p1, Lcom/mglab/scm/visual/c;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    const-string v3, "dlgbwlsoc"

    .line 8
    invoke-static {v1, v3, v2}, Lf8/h;->g0(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 9
    :cond_0
    invoke-virtual {p1, v0}, Lcom/mglab/scm/visual/c;->o(Landroidx/appcompat/widget/SwitchCompat;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
