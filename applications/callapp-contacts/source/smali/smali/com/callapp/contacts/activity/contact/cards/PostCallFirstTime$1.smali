.class Lcom/callapp/contacts/activity/contact/cards/PostCallFirstTime$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/cards/PostCallFirstTime;->onPostCallNeedToShowToolTip(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/cards/PostCallFirstTime;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/cards/PostCallFirstTime;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/PostCallFirstTime$1;->a:Lcom/callapp/contacts/activity/contact/cards/PostCallFirstTime;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 97
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->hj:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 98
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->hi:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    if-nez v0, :cond_0

    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->hi:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x5

    if-ge v0, v2, :cond_0

    .line 99
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/PostCallFirstTime$1;->a:Lcom/callapp/contacts/activity/contact/cards/PostCallFirstTime;

    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/contact/cards/PostCallFirstTime;->access$200(Lcom/callapp/contacts/activity/contact/cards/PostCallFirstTime;Z)V

    .line 101
    :cond_0
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->hi:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    .line 1039
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->b(I)Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    return-void

    .line 104
    :cond_1
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/PostCallFirstTime$1;->a:Lcom/callapp/contacts/activity/contact/cards/PostCallFirstTime;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/cards/PostCallFirstTime;->access$300(Lcom/callapp/contacts/activity/contact/cards/PostCallFirstTime;)V

    return-void
.end method
