.class Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer$1;
.super Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$TextWatcherImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;-><init>(Landroid/app/Activity;Landroid/view/View;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer$1;->a:Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;

    invoke-direct {p0}, Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$TextWatcherImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 7

    if-ne p3, p4, :cond_1

    .line 179
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer$1;->a:Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->a(Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v6, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    const/4 v6, 0x1

    .line 180
    :goto_1
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer$1;->a:Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->b(Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;)Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer$FilterListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 181
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer$1;->a:Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->b(Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;)Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer$FilterListener;

    move-result-object v1

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer$1;->a:Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->c(Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v1 .. v6}, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer$FilterListener;->a(Ljava/lang/String;IIIZ)V

    .line 182
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer$1;->a:Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;

    invoke-static {p2}, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->d(Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;)Z

    .line 185
    :cond_2
    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 187
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer$1;->a:Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;

    invoke-static {p2}, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->e(Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;)Z

    .line 189
    :cond_3
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer$1;->a:Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;

    invoke-static {p2, p1}, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->a(Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;Z)V

    return-void
.end method
