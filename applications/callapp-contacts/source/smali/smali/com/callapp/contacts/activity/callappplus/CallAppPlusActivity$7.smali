.class Lcom/callapp/contacts/activity/callappplus/CallAppPlusActivity$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/callappplus/CallAppPlusActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/callappplus/CallAppPlusActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/callappplus/CallAppPlusActivity;)V
    .locals 0

    .line 233
    iput-object p1, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusActivity$7;->a:Lcom/callapp/contacts/activity/callappplus/CallAppPlusActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickListener(Landroid/app/Activity;)V
    .locals 0

    .line 236
    iget-object p1, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusActivity$7;->a:Lcom/callapp/contacts/activity/callappplus/CallAppPlusActivity;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusActivity;->finish()V

    return-void
.end method
