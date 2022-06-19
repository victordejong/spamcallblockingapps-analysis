.class Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$3;
.super Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;->setViewTextAndColor(Lcom/shehabic/droppy/b;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;I)V
    .locals 0

    .line 244
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$3;->b:Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;

    iput p2, p0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$3;->a:I

    invoke-direct {p0}, Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 12

    .line 247
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$3;->b:Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;->access$000(Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;)Lcom/callapp/contacts/recorder/SeekBarManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$3;->b:Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;->access$000(Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;)Lcom/callapp/contacts/recorder/SeekBarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/recorder/SeekBarManager;->d()V

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$3;->b:Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;->access$200(Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;)Lcom/shehabic/droppy/DroppyMenuPopup;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 252
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$3;->b:Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;->access$300(Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;)Lcom/callapp/contacts/model/objectbox/CallRecorder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/model/objectbox/CallRecorder;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 253
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 254
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$3;->b:Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;

    invoke-static {v1, v0}, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;->access$400(Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;Ljava/io/File;)V

    .line 255
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$3;->b:Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;

    invoke-static {v0, v2}, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;->access$500(Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;Z)V

    .line 257
    :cond_1
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$3;->b:Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;->access$200(Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;)Lcom/shehabic/droppy/DroppyMenuPopup;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/shehabic/droppy/DroppyMenuPopup;->a(Z)V

    .line 260
    :cond_2
    iget v0, p0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$3;->a:I

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    .line 262
    :sswitch_0
    invoke-static {}, Lcom/callapp/contacts/recorder/CallRecorderManager;->get()Lcom/callapp/contacts/recorder/CallRecorderManager;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$3;->b:Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;->access$300(Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;)Lcom/callapp/contacts/model/objectbox/CallRecorder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/callapp/contacts/recorder/CallRecorderManager;->a(Landroid/content/Context;Lcom/callapp/contacts/model/objectbox/CallRecorder;)V

    return-void

    .line 310
    :sswitch_1
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$3;->b:Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/callapp/contacts/activity/records/CallRecordsActivity;->a(Landroid/content/Context;)V

    goto :goto_0

    .line 270
    :sswitch_2
    invoke-static {}, Lcom/callapp/contacts/recorder/CallRecorderManager;->get()Lcom/callapp/contacts/recorder/CallRecorderManager;

    move-result-object p1

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$3;->b:Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;->access$300(Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;)Lcom/callapp/contacts/model/objectbox/CallRecorder;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$3;->b:Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;->access$700(Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    move-result-object v1

    invoke-interface {v1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/callapp/contacts/recorder/CallRecorderManager;->a(Lcom/callapp/contacts/model/objectbox/CallRecorder;Lcom/callapp/contacts/model/contact/ContactData;)Z

    return-void

    .line 274
    :sswitch_3
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object p1

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$3;->b:Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v11, Lcom/callapp/contacts/popup/contact/DialogSimpleMessage;

    const v1, 0x7f120142

    .line 275
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v1, 0x7f120141

    .line 276
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v1, 0x7f120049

    .line 277
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v1, 0x7f1201a9

    .line 278
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v1, 0x7f0601cc

    .line 279
    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v6

    const/4 v7, 0x0

    new-instance v8, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$3$1;

    invoke-direct {v8, p0}, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$3$1;-><init>(Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$3;)V

    new-instance v9, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$3$2;

    invoke-direct {v9, p0}, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$3$2;-><init>(Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$3;)V

    const/4 v10, 0x0

    move-object v1, v11

    invoke-direct/range {v1 .. v10}, Lcom/callapp/contacts/popup/contact/DialogSimpleMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogSimpleListener;)V

    .line 274
    invoke-virtual {p1, v0, v11}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    return-void

    .line 266
    :sswitch_4
    invoke-static {}, Lcom/callapp/contacts/recorder/CallRecorderManager;->get()Lcom/callapp/contacts/recorder/CallRecorderManager;

    move-result-object p1

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$3;->b:Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;->access$300(Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;)Lcom/callapp/contacts/model/objectbox/CallRecorder;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$3;->b:Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;->access$600(Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    move-result-object v1

    invoke-interface {v1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/callapp/contacts/recorder/CallRecorderManager;->a(Lcom/callapp/contacts/model/objectbox/CallRecorder;Lcom/callapp/contacts/model/contact/ContactData;)Z

    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f12003c -> :sswitch_4
        0x7f120049 -> :sswitch_3
        0x7f120057 -> :sswitch_2
        0x7f120157 -> :sswitch_1
        0x7f120629 -> :sswitch_0
    .end sparse-switch
.end method
