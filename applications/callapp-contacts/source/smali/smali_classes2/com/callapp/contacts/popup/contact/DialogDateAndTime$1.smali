.class Lcom/callapp/contacts/popup/contact/DialogDateAndTime$1;
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

    .line 89
    iput-object p1, p0, Lcom/callapp/contacts/popup/contact/DialogDateAndTime$1;->c:Lcom/callapp/contacts/popup/contact/DialogDateAndTime;

    iput-object p2, p0, Lcom/callapp/contacts/popup/contact/DialogDateAndTime$1;->a:Landroid/widget/DatePicker;

    iput-object p3, p0, Lcom/callapp/contacts/popup/contact/DialogDateAndTime$1;->b:Landroid/widget/TimePicker;

    invoke-direct {p0}, Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 6

    .line 92
    iget-object p1, p0, Lcom/callapp/contacts/popup/contact/DialogDateAndTime$1;->c:Lcom/callapp/contacts/popup/contact/DialogDateAndTime;

    invoke-static {p1}, Lcom/callapp/contacts/popup/contact/DialogDateAndTime;->a(Lcom/callapp/contacts/popup/contact/DialogDateAndTime;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 93
    iget-object p1, p0, Lcom/callapp/contacts/popup/contact/DialogDateAndTime$1;->c:Lcom/callapp/contacts/popup/contact/DialogDateAndTime;

    invoke-static {p1}, Lcom/callapp/contacts/popup/contact/DialogDateAndTime;->b(Lcom/callapp/contacts/popup/contact/DialogDateAndTime;)Ljava/util/Calendar;

    move-result-object v0

    iget-object p1, p0, Lcom/callapp/contacts/popup/contact/DialogDateAndTime$1;->a:Landroid/widget/DatePicker;

    invoke-virtual {p1}, Landroid/widget/DatePicker;->getYear()I

    move-result v1

    iget-object p1, p0, Lcom/callapp/contacts/popup/contact/DialogDateAndTime$1;->a:Landroid/widget/DatePicker;

    invoke-virtual {p1}, Landroid/widget/DatePicker;->getMonth()I

    move-result v2

    iget-object p1, p0, Lcom/callapp/contacts/popup/contact/DialogDateAndTime$1;->a:Landroid/widget/DatePicker;

    invoke-virtual {p1}, Landroid/widget/DatePicker;->getDayOfMonth()I

    move-result v3

    iget-object p1, p0, Lcom/callapp/contacts/popup/contact/DialogDateAndTime$1;->b:Landroid/widget/TimePicker;

    invoke-virtual {p1}, Landroid/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object p1, p0, Lcom/callapp/contacts/popup/contact/DialogDateAndTime$1;->b:Landroid/widget/TimePicker;

    invoke-virtual {p1}, Landroid/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Ljava/util/Calendar;->set(IIIII)V

    .line 94
    iget-object p1, p0, Lcom/callapp/contacts/popup/contact/DialogDateAndTime$1;->c:Lcom/callapp/contacts/popup/contact/DialogDateAndTime;

    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/DialogDateAndTime$1;->a:Landroid/widget/DatePicker;

    iget-object v1, p0, Lcom/callapp/contacts/popup/contact/DialogDateAndTime$1;->b:Landroid/widget/TimePicker;

    invoke-static {p1}, Lcom/callapp/contacts/popup/contact/DialogDateAndTime;->c(Lcom/callapp/contacts/popup/contact/DialogDateAndTime;)Landroid/widget/TextView;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lcom/callapp/contacts/popup/contact/DialogDateAndTime;->a(Lcom/callapp/contacts/popup/contact/DialogDateAndTime;Landroid/widget/DatePicker;Landroid/widget/TimePicker;Landroid/widget/TextView;)V

    :cond_0
    return-void
.end method
