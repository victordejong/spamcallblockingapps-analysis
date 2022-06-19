.class Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer$6$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer$6;->doTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer$6;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer$6;I)V
    .locals 0

    .line 654
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer$6$1;->b:Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer$6;

    iput p2, p0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer$6$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickListener(Landroid/app/Activity;)V
    .locals 2

    .line 658
    const-class v0, Lcom/callapp/contacts/activity/chooseContact/ChooseSingleNumberFromContactsActivity;

    new-instance v1, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer$6$1$1;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer$6$1$1;-><init>(Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer$6$1;)V

    invoke-static {p1, v0, v1}, Lcom/callapp/contacts/util/Activities;->a(Landroid/content/Context;Ljava/lang/Class;Lcom/callapp/contacts/manager/popup/ActivityResult;)V

    return-void
.end method
