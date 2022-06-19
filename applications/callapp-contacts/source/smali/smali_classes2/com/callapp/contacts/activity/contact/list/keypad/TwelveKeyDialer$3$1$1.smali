.class Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer$3$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer$3$1;->onCallStateChanged(Lcom/callapp/contacts/model/call/CallData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer$3$1;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer$3$1;)V
    .locals 0

    .line 548
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer$3$1$1;->a:Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer$3$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 551
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer$3$1$1;->a:Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer$3$1;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer$3$1;->a:Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer$3;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer$3;->a:Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->c(Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
