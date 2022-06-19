.class Lcom/callapp/contacts/popup/contact/DialogDateAndTime$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 101
    iput-object p1, p0, Lcom/callapp/contacts/popup/contact/DialogDateAndTime$2;->c:Lcom/callapp/contacts/popup/contact/DialogDateAndTime;

    iput-object p2, p0, Lcom/callapp/contacts/popup/contact/DialogDateAndTime$2;->a:Landroid/widget/DatePicker;

    iput-object p3, p0, Lcom/callapp/contacts/popup/contact/DialogDateAndTime$2;->b:Landroid/widget/TimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 104
    iget-object p1, p0, Lcom/callapp/contacts/popup/contact/DialogDateAndTime$2;->c:Lcom/callapp/contacts/popup/contact/DialogDateAndTime;

    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/DialogDateAndTime$2;->a:Landroid/widget/DatePicker;

    iget-object v1, p0, Lcom/callapp/contacts/popup/contact/DialogDateAndTime$2;->b:Landroid/widget/TimePicker;

    invoke-static {v0, v1}, Lcom/callapp/contacts/popup/contact/DialogDateAndTime;->a(Landroid/widget/DatePicker;Landroid/widget/TimePicker;)Ljava/util/Calendar;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/callapp/contacts/popup/contact/DialogDateAndTime;->a(Lcom/callapp/contacts/popup/contact/DialogDateAndTime;Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 105
    iget-object p1, p0, Lcom/callapp/contacts/popup/contact/DialogDateAndTime$2;->c:Lcom/callapp/contacts/popup/contact/DialogDateAndTime;

    invoke-static {p1}, Lcom/callapp/contacts/popup/contact/DialogDateAndTime;->a(Lcom/callapp/contacts/popup/contact/DialogDateAndTime;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 106
    iget-object p1, p0, Lcom/callapp/contacts/popup/contact/DialogDateAndTime$2;->c:Lcom/callapp/contacts/popup/contact/DialogDateAndTime;

    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/DialogDateAndTime$2;->a:Landroid/widget/DatePicker;

    iget-object v1, p0, Lcom/callapp/contacts/popup/contact/DialogDateAndTime$2;->b:Landroid/widget/TimePicker;

    invoke-static {p1}, Lcom/callapp/contacts/popup/contact/DialogDateAndTime;->c(Lcom/callapp/contacts/popup/contact/DialogDateAndTime;)Landroid/widget/TextView;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lcom/callapp/contacts/popup/contact/DialogDateAndTime;->a(Lcom/callapp/contacts/popup/contact/DialogDateAndTime;Landroid/widget/DatePicker;Landroid/widget/TimePicker;Landroid/widget/TextView;)V

    return-void

    .line 108
    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/popup/contact/DialogDateAndTime$2;->c:Lcom/callapp/contacts/popup/contact/DialogDateAndTime;

    invoke-virtual {p1}, Lcom/callapp/contacts/popup/contact/DialogDateAndTime;->dismiss()V

    return-void
.end method
