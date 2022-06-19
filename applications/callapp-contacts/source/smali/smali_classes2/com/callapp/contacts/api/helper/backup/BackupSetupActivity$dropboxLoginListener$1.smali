.class public final Lcom/callapp/contacts/api/helper/backup/BackupSetupActivity$dropboxLoginListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/api/helper/backup/BackupLoginCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/api/helper/backup/BackupSetupActivity;-><init>()V
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
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0012\u0010\u0006\u001a\u00020\u00032\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0005H\u0016J\u0010\u0010\u0008\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u0005H\u0016\u00a8\u0006\n"
    }
    d2 = {
        "com/callapp/contacts/api/helper/backup/BackupSetupActivity$dropboxLoginListener$1",
        "Lcom/callapp/contacts/api/helper/backup/BackupLoginCallBack;",
        "onCancel",
        "",
        "message",
        "",
        "onConnectionComplete",
        "accessToken",
        "onError",
        "e",
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
.field final synthetic a:Lcom/callapp/contacts/api/helper/backup/BackupSetupActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/api/helper/backup/BackupSetupActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 39
    iput-object p1, p0, Lcom/callapp/contacts/api/helper/backup/BackupSetupActivity$dropboxLoginListener$1;->a:Lcom/callapp/contacts/api/helper/backup/BackupSetupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 41
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->hK:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    sget-object v1, Lcom/callapp/contacts/api/helper/backup/BackupViaType;->DROP_BOX:Lcom/callapp/contacts/api/helper/backup/BackupViaType;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->set(Ljava/lang/Object;)V

    .line 42
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/api/helper/backup/BackupSetupActivity$dropboxLoginListener$1$onConnectionComplete$1;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/api/helper/backup/BackupSetupActivity$dropboxLoginListener$1$onConnectionComplete$1;-><init>(Lcom/callapp/contacts/api/helper/backup/BackupSetupActivity$dropboxLoginListener$1;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p1

    new-instance v0, Lcom/callapp/contacts/api/helper/backup/BackupSetupActivity$dropboxLoginListener$1$onError$1;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/api/helper/backup/BackupSetupActivity$dropboxLoginListener$1$onError$1;-><init>(Lcom/callapp/contacts/api/helper/backup/BackupSetupActivity$dropboxLoginListener$1;)V

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/CallAppApplication;->a(Ljava/lang/Runnable;)V

    .line 52
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->hK:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/api/helper/backup/BackupViaType;

    sget-object v0, Lcom/callapp/contacts/api/helper/backup/BackupViaType;->DROP_BOX:Lcom/callapp/contacts/api/helper/backup/BackupViaType;

    if-ne p1, v0, :cond_0

    .line 53
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->hK:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    sget-object v0, Lcom/callapp/contacts/api/helper/backup/BackupViaType;->UN_KNOWN:Lcom/callapp/contacts/api/helper/backup/BackupViaType;

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->set(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p1

    new-instance v0, Lcom/callapp/contacts/api/helper/backup/BackupSetupActivity$dropboxLoginListener$1$onCancel$1;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/api/helper/backup/BackupSetupActivity$dropboxLoginListener$1$onCancel$1;-><init>(Lcom/callapp/contacts/api/helper/backup/BackupSetupActivity$dropboxLoginListener$1;)V

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/CallAppApplication;->a(Ljava/lang/Runnable;)V

    .line 62
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->hK:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/api/helper/backup/BackupViaType;

    sget-object v0, Lcom/callapp/contacts/api/helper/backup/BackupViaType;->DROP_BOX:Lcom/callapp/contacts/api/helper/backup/BackupViaType;

    if-ne p1, v0, :cond_0

    .line 63
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->hK:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    sget-object v0, Lcom/callapp/contacts/api/helper/backup/BackupViaType;->UN_KNOWN:Lcom/callapp/contacts/api/helper/backup/BackupViaType;

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->set(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
