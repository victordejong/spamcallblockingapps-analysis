.class Lcom/callapp/contacts/popup/contact/DialogDateAndTime$4;
.super Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/popup/contact/DialogDateAndTime;->ovViewCreated(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/DatePicker;

.field final synthetic b:Landroid/widget/TimePicker;

.field final synthetic c:Lcom/callapp/contacts/popup/contact/DialogDateAndTime;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/popup/contact/DialogDateAndTime;Landroid/widget/DatePicker;Landroid/widget/TimePicker;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/callapp/contacts/popup/contact/DialogDateAndTime$4;->c:Lcom/callapp/contacts/popup/contact/DialogDateAndTime;

    iput-object p2, p0, Lcom/callapp/contacts/popup/contact/DialogDateAndTime$4;->a:Landroid/widget/DatePicker;

    iput-object p3, p0, Lcom/callapp/contacts/popup/contact/DialogDateAndTime$4;->b:Landroid/widget/TimePicker;

    invoke-direct {p0}, Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 8

    .line 129
    iget-object p1, p0, Lcom/callapp/contacts/popup/contact/DialogDateAndTime$4;->a:Landroid/widget/DatePicker;

    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/DialogDateAndTime$4;->b:Landroid/widget/TimePicker;

    invoke-static {p1, v0}, Lcom/callapp/contacts/popup/contact/DialogDateAndTime;->a(Landroid/widget/DatePicker;Landroid/widget/TimePicker;)Ljava/util/Calendar;

    move-result-object p1

    .line 131
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 132
    iget-object v2, p0, Lcom/callapp/contacts/popup/contact/DialogDateAndTime$4;->c:Lcom/callapp/contacts/popup/contact/DialogDateAndTime;

    invoke-static {v2}, Lcom/callapp/contacts/popup/contact/DialogDateAndTime;->e(Lcom/callapp/contacts/popup/contact/DialogDateAndTime;)I

    move-result v2

    if-nez v2, :cond_0

    .line 133
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 134
    iget-object v3, p0, Lcom/callapp/contacts/popup/contact/DialogDateAndTime$4;->c:Lcom/callapp/contacts/popup/contact/DialogDateAndTime;

    invoke-static {v3}, Lcom/callapp/contacts/popup/contact/DialogDateAndTime;->f(Lcom/callapp/contacts/popup/contact/DialogDateAndTime;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 v3, 0xb

    .line 135
    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v4, v3, :cond_0

    const/16 v3, 0xc

    .line 136
    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne p1, v2, :cond_0

    .line 137
    iget-object p1, p0, Lcom/callapp/contacts/popup/contact/DialogDateAndTime$4;->c:Lcom/callapp/contacts/popup/contact/DialogDateAndTime;

    invoke-static {p1}, Lcom/callapp/contacts/popup/contact/DialogDateAndTime;->b(Lcom/callapp/contacts/popup/contact/DialogDateAndTime;)Ljava/util/Calendar;

    move-result-object v2

    iget-object p1, p0, Lcom/callapp/contacts/popup/contact/DialogDateAndTime$4;->a:Landroid/widget/DatePicker;

    invoke-virtual {p1}, Landroid/widget/DatePicker;->getYear()I

    move-result v3

    iget-object p1, p0, Lcom/callapp/contacts/popup/contact/DialogDateAndTime$4;->a:Landroid/widget/DatePicker;

    invoke-virtual {p1}, Landroid/widget/DatePicker;->getMonth()I

    move-result v4

    iget-object p1, p0, Lcom/callapp/contacts/popup/contact/DialogDateAndTime$4;->a:Landroid/widget/DatePicker;

    invoke-virtual {p1}, Landroid/widget/DatePicker;->getDayOfMonth()I

    move-result v5

    iget-object p1, p0, Lcom/callapp/contacts/popup/contact/DialogDateAndTime$4;->b:Landroid/widget/TimePicker;

    invoke-virtual {p1}, Landroid/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object p1, p0, Lcom/callapp/contacts/popup/contact/DialogDateAndTime$4;->b:Landroid/widget/TimePicker;

    invoke-virtual {p1}, Landroid/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual/range {v2 .. v7}, Ljava/util/Calendar;->set(IIIII)V

    .line 139
    iget-object p1, p0, Lcom/callapp/contacts/popup/contact/DialogDateAndTime$4;->c:Lcom/callapp/contacts/popup/contact/DialogDateAndTime;

    invoke-static {p1}, Lcom/callapp/contacts/popup/contact/DialogDateAndTime;->a(Lcom/callapp/contacts/popup/contact/DialogDateAndTime;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 140
    iget-object p1, p0, Lcom/callapp/contacts/popup/contact/DialogDateAndTime$4;->c:Lcom/callapp/contacts/popup/contact/DialogDateAndTime;

    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/DialogDateAndTime$4;->a:Landroid/widget/DatePicker;

    iget-object v1, p0, Lcom/callapp/contacts/popup/contact/DialogDateAndTime$4;->b:Landroid/widget/TimePicker;

    invoke-static {p1}, Lcom/callapp/contacts/popup/contact/DialogDateAndTime;->c(Lcom/callapp/contacts/popup/contact/DialogDateAndTime;)Landroid/widget/TextView;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lcom/callapp/contacts/popup/contact/DialogDateAndTime;->a(Lcom/callapp/contacts/popup/contact/DialogDateAndTime;Landroid/widget/DatePicker;Landroid/widget/TimePicker;Landroid/widget/TextView;)V

    return-void

    .line 146
    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/popup/contact/DialogDateAndTime$4;->c:Lcom/callapp/contacts/popup/contact/DialogDateAndTime;

    invoke-static {p1}, Lcom/callapp/contacts/popup/contact/DialogDateAndTime;->d(Lcom/callapp/contacts/popup/contact/DialogDateAndTime;)Lcom/callapp/contacts/popup/contact/DialogDateAndTime$IDateAndTimeDialogListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 147
    iget-object p1, p0, Lcom/callapp/contacts/popup/contact/DialogDateAndTime$4;->c:Lcom/callapp/contacts/popup/contact/DialogDateAndTime;

    invoke-static {p1}, Lcom/callapp/contacts/popup/contact/DialogDateAndTime;->d(Lcom/callapp/contacts/popup/contact/DialogDateAndTime;)Lcom/callapp/contacts/popup/contact/DialogDateAndTime$IDateAndTimeDialogListener;

    move-result-object p1

    invoke-interface {p1, v0, v1}, Lcom/callapp/contacts/popup/contact/DialogDateAndTime$IDateAndTimeDialogListener;->a(J)V

    .line 150
    :cond_1
    iget-object p1, p0, Lcom/callapp/contacts/popup/contact/DialogDateAndTime$4;->c:Lcom/callapp/contacts/popup/contact/DialogDateAndTime;

    invoke-virtual {p1}, Lcom/callapp/contacts/popup/contact/DialogDateAndTime;->dismiss()V

    return-void
.end method
