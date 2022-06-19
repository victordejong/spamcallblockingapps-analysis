.class public final synthetic Ll8/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;


# instance fields
.field public final synthetic a:Ll8/w;

.field public final synthetic b:Landroid/widget/Button;


# direct methods
.method public synthetic constructor <init>(Ll8/w;Landroid/widget/Button;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll8/k;->a:Ll8/w;

    iput-object p2, p0, Ll8/k;->b:Landroid/widget/Button;

    return-void
.end method


# virtual methods
.method public final onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 1

    iget-object p1, p0, Ll8/k;->a:Ll8/w;

    iget-object v0, p0, Ll8/k;->b:Landroid/widget/Button;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    invoke-static {p2, p3}, Lf8/g;->h(II)Ljava/util/Date;

    move-result-object p2

    .line 2
    iget-object p3, p1, Ll8/w;->a:Landroid/content/Context;

    invoke-static {p3, p2}, Lf8/g;->m(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 3
    invoke-static {p2}, Lf8/g;->n(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x1

    invoke-virtual {p1, p3, p2}, Ll8/w;->k(ILjava/lang/String;)V

    return-void
.end method
