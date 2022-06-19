.class final Lcom/callapp/contacts/util/ListsUtils$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/util/ListsUtils;->a(Landroid/content/Context;IILcom/callapp/contacts/event/listener/Listener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/event/listener/Listener;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/event/listener/Listener;)V
    .locals 0

    .line 359
    iput-object p1, p0, Lcom/callapp/contacts/util/ListsUtils$11;->a:Lcom/callapp/contacts/event/listener/Listener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClickListener(Landroid/app/Activity;)V
    .locals 1

    .line 362
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->w:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    .line 363
    new-instance p1, Lcom/callapp/contacts/util/ListsUtils$11$1;

    invoke-direct {p1, p0}, Lcom/callapp/contacts/util/ListsUtils$11$1;-><init>(Lcom/callapp/contacts/util/ListsUtils$11;)V

    .line 369
    invoke-virtual {p1}, Lcom/callapp/contacts/util/ListsUtils$11$1;->execute()Lcom/callapp/contacts/manager/task/Task;

    return-void
.end method
