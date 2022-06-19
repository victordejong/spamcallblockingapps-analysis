.class Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer$5$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer$5$1;->onCallStateChanged(Lcom/callapp/contacts/model/call/CallData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer$5$1;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer$5$1;)V
    .locals 0

    .line 602
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer$5$1$1;->a:Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer$5$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 605
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer$5$1$1;->a:Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer$5$1;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer$5$1;->a:Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer$5;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer$5;->a:Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->c(Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
