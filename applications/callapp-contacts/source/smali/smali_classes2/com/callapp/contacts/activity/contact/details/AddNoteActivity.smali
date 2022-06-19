.class public Lcom/callapp/contacts/activity/contact/details/AddNoteActivity;
.super Lcom/callapp/contacts/activity/base/BaseNoTitleActivity;
.source "SourceFile"


# instance fields
.field private final a:I

.field private b:Ljava/lang/String;

.field private c:Landroid/widget/EditText;

.field private d:Landroid/widget/TextView;

.field private e:Ljava/lang/String;

.field private f:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Lcom/callapp/contacts/activity/base/BaseNoTitleActivity;-><init>()V

    const v0, 0x7f0601ec

    .line 43
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/activity/contact/details/AddNoteActivity;->a:I

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/contact/details/AddNoteActivity;)Ljava/lang/String;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/details/AddNoteActivity;->e:Ljava/lang/String;

    return-object p0
.end method

.method private a()V
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/AddNoteActivity;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/callapp/contacts/activity/contact/details/AddNoteActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/contact/details/AddNoteActivity;Ljava/lang/String;)V
    .locals 4

    .line 1240
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "text/plain"

    .line 1241
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1242
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n\n"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const p1, 0x7f1204dd

    .line 1243
    invoke-static {p1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {}, Lcom/callapp/contacts/util/http/HttpUtils;->getCallAppDomain()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, p1, v3

    const v2, 0x7f12027f

    invoke-static {v2, p1}, Lcom/callapp/contacts/util/Activities;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "android.intent.extra.TEXT"

    .line 1242
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1244
    invoke-static {p0, v0}, Lcom/callapp/contacts/util/Activities;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    .line 162
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "note"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 163
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/AddNoteActivity;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 164
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/AddNoteActivity;->b:Ljava/lang/String;

    const-string v2, "contactId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const/4 v1, -0x1

    .line 166
    invoke-virtual {p0, v1, v0}, Lcom/callapp/contacts/activity/contact/details/AddNoteActivity;->setResult(ILandroid/content/Intent;)V

    .line 169
    new-instance v0, Lcom/callapp/contacts/activity/contact/details/AddNoteActivity$4;

    invoke-direct {v0, p0, p1}, Lcom/callapp/contacts/activity/contact/details/AddNoteActivity$4;-><init>(Lcom/callapp/contacts/activity/contact/details/AddNoteActivity;Ljava/lang/String;)V

    .line 182
    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/details/AddNoteActivity$4;->execute()Lcom/callapp/contacts/manager/task/Task;

    .line 183
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/AddNoteActivity;->finish()V

    return-void
.end method

.method public static a(Ljava/lang/String;Landroid/content/Context;)V
    .locals 2

    .line 93
    invoke-static {p0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/callapp/contacts/activity/contact/details/AddNoteActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "contactId"

    .line 95
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    invoke-static {p1, v0}, Lcom/callapp/contacts/util/Activities;->b(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/callapp/contacts/activity/contact/details/AddNoteActivity;)Landroid/widget/TextView;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/details/AddNoteActivity;->d:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic c(Lcom/callapp/contacts/activity/contact/details/AddNoteActivity;)Landroid/widget/EditText;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/details/AddNoteActivity;->c:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic d(Lcom/callapp/contacts/activity/contact/details/AddNoteActivity;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/AddNoteActivity;->a()V

    return-void
.end method

.method static synthetic e(Lcom/callapp/contacts/activity/contact/details/AddNoteActivity;)Ljava/lang/String;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/details/AddNoteActivity;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic f(Lcom/callapp/contacts/activity/contact/details/AddNoteActivity;)I
    .locals 0

    .line 35
    iget p0, p0, Lcom/callapp/contacts/activity/contact/details/AddNoteActivity;->f:I

    return p0
.end method

.method static synthetic g(Lcom/callapp/contacts/activity/contact/details/AddNoteActivity;)V
    .locals 9

    const v0, 0x7f12028d

    .line 2137
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v0, 0x7f120083

    .line 2138
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2139
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object v0

    new-instance v8, Lcom/callapp/contacts/popup/contact/DialogSimpleMessage;

    const v1, 0x7f120878

    .line 2140
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v1, 0x7f1204c5

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/callapp/contacts/activity/contact/details/AddNoteActivity$2;

    invoke-direct {v6, p0}, Lcom/callapp/contacts/activity/contact/details/AddNoteActivity$2;-><init>(Lcom/callapp/contacts/activity/contact/details/AddNoteActivity;)V

    new-instance v7, Lcom/callapp/contacts/activity/contact/details/AddNoteActivity$3;

    invoke-direct {v7, p0}, Lcom/callapp/contacts/activity/contact/details/AddNoteActivity$3;-><init>(Lcom/callapp/contacts/activity/contact/details/AddNoteActivity;)V

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/callapp/contacts/popup/contact/DialogSimpleMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;)V

    .line 2139
    invoke-virtual {v0, p0, v8}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    return-void
.end method


# virtual methods
.method public getLayoutResourceId()I
    .locals 1

    const v0, 0x7f0d0032

    return v0
.end method

.method public onBackPressed()V
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/AddNoteActivity;->e:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/callapp/contacts/activity/contact/details/AddNoteActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 58
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/AddNoteActivity;->setKeyguardDismissAndScreenWindowFlags()V

    .line 59
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/base/BaseNoTitleActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0a0379

    .line 60
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/details/AddNoteActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/AddNoteActivity;->c:Landroid/widget/EditText;

    const p1, 0x7f0a0798

    .line 61
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/details/AddNoteActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/AddNoteActivity;->d:Landroid/widget/TextView;

    const p1, 0x7f0a0377

    .line 63
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/details/AddNoteActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/cardview/widget/CardView;

    const v0, 0x7f060026

    .line 64
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/cardview/widget/CardView;->setCardBackgroundColor(I)V

    const p1, 0x7f0a0249

    .line 66
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/details/AddNoteActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v0, 0x7f1201e4

    .line 67
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    iget v0, p0, Lcom/callapp/contacts/activity/contact/details/AddNoteActivity;->a:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 70
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/AddNoteActivity;->d:Landroid/widget/TextView;

    const v0, 0x7f1205e4

    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/AddNoteActivity;->d:Landroid/widget/TextView;

    const v0, 0x7f060088

    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const p1, 0x7f0a0638

    .line 72
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/details/AddNoteActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 73
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v0, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 75
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/AddNoteActivity;->c:Landroid/widget/EditText;

    iget v0, p0, Lcom/callapp/contacts/activity/contact/details/AddNoteActivity;->a:I

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setTextColor(I)V

    .line 76
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/AddNoteActivity;->c:Landroid/widget/EditText;

    const v0, 0x7f120876

    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 77
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/AddNoteActivity;->c:Landroid/widget/EditText;

    const v0, 0x7f06011a

    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 78
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/AddNoteActivity;->c:Landroid/widget/EditText;

    new-instance v0, Lcom/callapp/contacts/activity/contact/details/AddNoteActivity$1;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/contact/details/AddNoteActivity$1;-><init>(Lcom/callapp/contacts/activity/contact/details/AddNoteActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 89
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/AddNoteActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/details/AddNoteActivity;->onNewIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 4

    .line 102
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/base/BaseNoTitleActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 103
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "contactId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/details/AddNoteActivity;->b:Ljava/lang/String;

    :cond_0
    const-string v0, "note"

    .line 107
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_1

    move-object v0, v1

    :cond_1
    const/4 v2, -0x1

    const-string v3, "position"

    .line 111
    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/callapp/contacts/activity/contact/details/AddNoteActivity;->f:I

    .line 112
    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/details/AddNoteActivity;->e:Ljava/lang/String;

    .line 113
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/AddNoteActivity;->c:Landroid/widget/EditText;

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 115
    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "urgent!"

    .line 116
    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x7

    .line 117
    invoke-virtual {v0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 120
    :cond_2
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/AddNoteActivity;->c:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 123
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/AddNoteActivity;->c:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    .line 124
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 125
    invoke-static {p1, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 128
    :cond_3
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/AddNoteActivity;->c:Landroid/widget/EditText;

    const/16 v0, 0xc8

    invoke-static {p1, v0}, Lcom/callapp/contacts/util/Activities;->a(Landroid/view/View;I)V

    return-void
.end method

.method public onNotesButtonsItemClicked(Landroid/view/View;)V
    .locals 6

    .line 188
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a0249

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eq p1, v0, :cond_2

    const v0, 0x7f0a0638

    if-eq p1, v0, :cond_1

    const v0, 0x7f0a0798

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 190
    :cond_0
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/AddNoteActivity;->a()V

    return-void

    .line 1203
    :cond_1
    new-instance p1, Lcom/callapp/contacts/activity/contact/details/AddNoteActivity$5;

    invoke-direct {p1, p0}, Lcom/callapp/contacts/activity/contact/details/AddNoteActivity$5;-><init>(Lcom/callapp/contacts/activity/contact/details/AddNoteActivity;)V

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/callapp/contacts/popup/contact/AdapterIconAndText$ItemIconAndText;

    new-instance v3, Lcom/callapp/contacts/popup/contact/AdapterIconAndText$ItemIconAndText;

    const v4, 0x7f080487

    const v5, 0x7f120633

    invoke-direct {v3, v4, v5}, Lcom/callapp/contacts/popup/contact/AdapterIconAndText$ItemIconAndText;-><init>(II)V

    aput-object v3, v0, v2

    const/4 v2, 0x1

    new-instance v3, Lcom/callapp/contacts/popup/contact/AdapterIconAndText$ItemIconAndText;

    const v4, 0x7f0802f0

    const v5, 0x7f12028d

    invoke-direct {v3, v4, v5}, Lcom/callapp/contacts/popup/contact/AdapterIconAndText$ItemIconAndText;-><init>(II)V

    aput-object v3, v0, v2

    .line 1221
    new-instance v2, Lcom/callapp/contacts/popup/contact/DialogList;

    invoke-direct {v2, v1}, Lcom/callapp/contacts/popup/contact/DialogList;-><init>(Ljava/lang/String;)V

    .line 1223
    new-instance v1, Lcom/callapp/contacts/popup/contact/AdapterIconAndText;

    const v3, 0x7f0d00aa

    invoke-direct {v1, p0, v3, v0}, Lcom/callapp/contacts/popup/contact/AdapterIconAndText;-><init>(Landroid/content/Context;I[Lcom/callapp/contacts/popup/contact/AdapterIconAndText$ItemIconAndText;)V

    .line 1224
    new-instance v0, Lcom/callapp/contacts/activity/contact/details/AddNoteActivity$6;

    invoke-direct {v0, p0, v2, p1}, Lcom/callapp/contacts/activity/contact/details/AddNoteActivity$6;-><init>(Lcom/callapp/contacts/activity/contact/details/AddNoteActivity;Lcom/callapp/contacts/popup/contact/DialogList;Lcom/callapp/contacts/popup/contact/AdapterText$AdapterEvents;)V

    invoke-virtual {v1, v0}, Lcom/callapp/contacts/popup/contact/AdapterIconAndText;->setListener(Lcom/callapp/contacts/popup/contact/AdapterText$AdapterEvents;)V

    .line 1235
    invoke-virtual {v2, v1}, Lcom/callapp/contacts/popup/contact/DialogList;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1236
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object p1

    invoke-virtual {p1, p0, v2}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    return-void

    .line 196
    :cond_2
    invoke-virtual {p0, v2, v1}, Lcom/callapp/contacts/activity/contact/details/AddNoteActivity;->setResult(ILandroid/content/Intent;)V

    .line 197
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/AddNoteActivity;->finish()V

    :goto_0
    return-void
.end method
