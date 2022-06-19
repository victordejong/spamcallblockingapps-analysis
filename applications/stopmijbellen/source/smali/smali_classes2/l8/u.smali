.class public final synthetic Ll8/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ll8/w;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ll8/w;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p3, p0, Ll8/u;->a:I

    iput-object p1, p0, Ll8/u;->b:Ll8/w;

    iput-object p2, p0, Ll8/u;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 10

    iget v0, p0, Ll8/u;->a:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Ll8/u;->b:Ll8/w;

    iget-object v1, p0, Ll8/u;->c:Ljava/lang/Object;

    check-cast v1, Landroid/widget/Button;

    .line 1
    iget-object v2, v0, Ll8/w;->a:Landroid/content/Context;

    invoke-static {v2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v8

    const/4 v2, 0x2

    .line 2
    invoke-virtual {v0, v2}, Ll8/w;->e(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lf8/g;->i(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    .line 3
    new-instance v9, Landroid/app/TimePickerDialog;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Ll8/o;

    invoke-direct {v5, v0, v1}, Ll8/o;-><init>(Ll8/w;Landroid/widget/Button;)V

    .line 4
    invoke-static {v2}, Lf8/g;->r(Ljava/util/Date;)I

    move-result v6

    invoke-static {v2}, Lf8/g;->u(Ljava/util/Date;)I

    move-result v7

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    const-string p1, ""

    .line 5
    invoke-virtual {v9, p1}, Landroid/app/TimePickerDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 6
    invoke-virtual {v9}, Landroid/app/TimePickerDialog;->show()V

    .line 7
    iget-object p1, v0, Ll8/w;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f06005b

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    const/4 v0, -0x1

    .line 8
    invoke-virtual {v9, v0}, Landroid/app/TimePickerDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextColor(I)V

    const/4 v0, -0x2

    .line 9
    invoke-virtual {v9, v0}, Landroid/app/TimePickerDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextColor(I)V

    return-void

    .line 10
    :pswitch_1
    iget-object p1, p0, Ll8/u;->b:Ll8/w;

    iget-object v0, p0, Ll8/u;->c:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    const/4 v2, 0x4

    .line 11
    invoke-virtual {p1, v2}, Ll8/w;->c(I)Z

    move-result v3

    xor-int/2addr v1, v3

    invoke-virtual {p1, v2, v1}, Ll8/w;->j(IZ)V

    .line 12
    invoke-virtual {p1, v0}, Ll8/w;->o(Landroid/view/View;)Ll8/w;

    return-void

    .line 13
    :goto_0
    iget-object p1, p0, Ll8/u;->b:Ll8/w;

    iget-object v0, p0, Ll8/u;->c:Ljava/lang/Object;

    check-cast v0, Lh8/u;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iget v0, v0, Lh8/u;->e:I

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v0, -0x1

    .line 15
    invoke-virtual {p1, v2, v0}, Ll8/w;->p(II)V

    .line 16
    iget v0, p1, Ll8/w;->c:I

    sub-int/2addr v0, v1

    iput v0, p1, Ll8/w;->c:I

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
