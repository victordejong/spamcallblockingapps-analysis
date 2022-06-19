.class Lcom/callapp/contacts/activity/calllog/CallLogFragment$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/popup/ActivityResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/calllog/CallLogFragment$2;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/calllog/CallLogFragment$2;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/calllog/CallLogFragment$2;)V
    .locals 0

    .line 252
    iput-object p1, p0, Lcom/callapp/contacts/activity/calllog/CallLogFragment$2$1;->a:Lcom/callapp/contacts/activity/calllog/CallLogFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 0

    .line 255
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->go:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    .line 256
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/phone/PhoneManager;->e()V

    return-void
.end method
