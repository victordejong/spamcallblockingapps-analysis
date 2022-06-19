.class public final Lcom/callapp/contacts/activity/contact/list/CallLogSorter$Companion$openSortByDialog$dialog$1;
.super Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceBase$SingleChoiceListenerImpel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/list/CallLogSorter$Companion;->a(Landroid/content/Context;Lcom/callapp/contacts/activity/contact/list/OnSortAction;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/callapp/contacts/activity/contact/list/CallLogSorter$Companion$openSortByDialog$dialog$1",
        "Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceBase$SingleChoiceListenerImpel;",
        "onDone",
        "",
        "option",
        "",
        "callapp-client_playRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Lcom/callapp/contacts/activity/contact/list/OnSortAction;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;Lcom/callapp/contacts/activity/contact/list/OnSortAction;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/CallLogSorter$Companion$openSortByDialog$dialog$1;->a:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/list/CallLogSorter$Companion$openSortByDialog$dialog$1;->b:Lcom/callapp/contacts/activity/contact/list/OnSortAction;

    invoke-direct {p0}, Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceBase$SingleChoiceListenerImpel;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(I)V
    .locals 2

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 29
    :cond_0
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->db:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/activity/contact/list/CallLogSortType;

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/list/CallLogSorter$Companion$openSortByDialog$dialog$1;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/activity/contact/list/CallLogSortType;

    if-eq p1, v1, :cond_2

    .line 30
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->db:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/list/CallLogSorter$Companion$openSortByDialog$dialog$1;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->set(Ljava/lang/Object;)V

    .line 31
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/CallLogSorter$Companion$openSortByDialog$dialog$1;->b:Lcom/callapp/contacts/activity/contact/list/OnSortAction;

    invoke-interface {p1}, Lcom/callapp/contacts/activity/contact/list/OnSortAction;->a()V

    goto :goto_0

    .line 23
    :cond_1
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->db:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/activity/contact/list/CallLogSortType;

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/CallLogSorter$Companion$openSortByDialog$dialog$1;->a:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/activity/contact/list/CallLogSortType;

    if-eq p1, v0, :cond_2

    .line 24
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->db:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/CallLogSorter$Companion$openSortByDialog$dialog$1;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->set(Ljava/lang/Object;)V

    .line 25
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/CallLogSorter$Companion$openSortByDialog$dialog$1;->b:Lcom/callapp/contacts/activity/contact/list/OnSortAction;

    invoke-interface {p1}, Lcom/callapp/contacts/activity/contact/list/OnSortAction;->a()V

    :cond_2
    :goto_0
    return-void
.end method
