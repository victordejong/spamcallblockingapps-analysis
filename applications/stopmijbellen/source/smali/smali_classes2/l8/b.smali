.class public final synthetic Ll8/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Ll8/w;

.field public final synthetic b:Landroid/widget/Button;


# direct methods
.method public synthetic constructor <init>(Ll8/w;Landroid/widget/Button;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll8/b;->a:Ll8/w;

    iput-object p2, p0, Ll8/b;->b:Landroid/widget/Button;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 10

    iget-object v0, p0, Ll8/b;->a:Ll8/w;

    iget-object v1, p0, Ll8/b;->b:Landroid/widget/Button;

    .line 1
    iget-object v2, v0, Ll8/w;->a:Landroid/content/Context;

    invoke-static {v2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v8

    const/4 v2, 0x1

    .line 2
    invoke-virtual {v0, v2}, Ll8/w;->e(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lf8/g;->i(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    .line 3
    new-instance v9, Landroid/app/TimePickerDialog;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Ll8/k;

    invoke-direct {v5, v0, v1}, Ll8/k;-><init>(Ll8/w;Landroid/widget/Button;)V

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
.end method
