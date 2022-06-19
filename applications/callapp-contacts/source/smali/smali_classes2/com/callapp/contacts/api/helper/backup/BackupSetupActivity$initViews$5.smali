.class final Lcom/callapp/contacts/api/helper/backup/BackupSetupActivity$initViews$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/api/helper/backup/BackupSetupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u00032\u0006\u0010\u0005\u001a\u00020\u0006H\n\u00a2\u0006\u0002\u0008\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "<anonymous parameter 0>",
        "Landroid/widget/RadioGroup;",
        "kotlin.jvm.PlatformType",
        "i",
        "",
        "onCheckedChanged"
    }
    k = 0x3
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

    iput-object p1, p0, Lcom/callapp/contacts/api/helper/backup/BackupSetupActivity$initViews$5;->a:Lcom/callapp/contacts/api/helper/backup/BackupSetupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 1

    const p1, 0x7f0a0354

    const/4 v0, 0x1

    if-eq p2, p1, :cond_2

    const p1, 0x7f0a045b

    if-eq p2, p1, :cond_0

    .line 199
    sget-object p1, Lcom/callapp/contacts/api/helper/backup/BackupViaType;->UN_KNOWN:Lcom/callapp/contacts/api/helper/backup/BackupViaType;

    return-void

    .line 190
    :cond_0
    sget-object p1, Lcom/callapp/contacts/api/helper/backup/GoogleDriveHelper;->c:Lcom/callapp/contacts/api/helper/backup/GoogleDriveHelper$Companion;

    invoke-virtual {p1}, Lcom/callapp/contacts/api/helper/backup/GoogleDriveHelper$Companion;->get()Lcom/callapp/contacts/api/helper/backup/GoogleDriveHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/api/helper/backup/GoogleDriveHelper;->isLoggedIn()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 191
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->hK:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    sget-object p2, Lcom/callapp/contacts/api/helper/backup/BackupViaType;->GOOGLE_DRIVE:Lcom/callapp/contacts/api/helper/backup/BackupViaType;

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->set(Ljava/lang/Object;)V

    .line 192
    iget-object p1, p0, Lcom/callapp/contacts/api/helper/backup/BackupSetupActivity$initViews$5;->a:Lcom/callapp/contacts/api/helper/backup/BackupSetupActivity;

    invoke-virtual {p1}, Lcom/callapp/contacts/api/helper/backup/BackupSetupActivity;->getOkBtn()Landroid/widget/TextView;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    invoke-static {p1, p2, v0}, Lcom/callapp/contacts/api/helper/backup/BackupSetupActivity;->a(Lcom/callapp/contacts/api/helper/backup/BackupSetupActivity;Landroid/view/View;Z)V

    return-void

    .line 194
    :cond_1
    sget-object p1, Lcom/callapp/contacts/api/helper/backup/GoogleDriveHelper;->c:Lcom/callapp/contacts/api/helper/backup/GoogleDriveHelper$Companion;

    invoke-virtual {p1}, Lcom/callapp/contacts/api/helper/backup/GoogleDriveHelper$Companion;->get()Lcom/callapp/contacts/api/helper/backup/GoogleDriveHelper;

    move-result-object p1

    iget-object p2, p0, Lcom/callapp/contacts/api/helper/backup/BackupSetupActivity$initViews$5;->a:Lcom/callapp/contacts/api/helper/backup/BackupSetupActivity;

    invoke-virtual {p2}, Lcom/callapp/contacts/api/helper/backup/BackupSetupActivity;->getGoogleLoginListener()Lcom/callapp/contacts/api/helper/backup/BackupLoginCallBack;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/api/helper/backup/GoogleDriveHelper;->setLoginListener(Lcom/callapp/contacts/api/helper/backup/BackupLoginCallBack;)V

    .line 195
    sget-object p1, Lcom/callapp/contacts/api/helper/backup/GoogleDriveHelper;->c:Lcom/callapp/contacts/api/helper/backup/GoogleDriveHelper$Companion;

    invoke-virtual {p1}, Lcom/callapp/contacts/api/helper/backup/GoogleDriveHelper$Companion;->get()Lcom/callapp/contacts/api/helper/backup/GoogleDriveHelper;

    move-result-object p1

    iget-object p2, p0, Lcom/callapp/contacts/api/helper/backup/BackupSetupActivity$initViews$5;->a:Lcom/callapp/contacts/api/helper/backup/BackupSetupActivity;

    check-cast p2, Landroid/app/Activity;

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/api/helper/backup/GoogleDriveHelper;->a(Landroid/app/Activity;)V

    return-void

    .line 180
    :cond_2
    sget-object p1, Lcom/callapp/contacts/api/helper/backup/DropBoxHelper;->c:Lcom/callapp/contacts/api/helper/backup/DropBoxHelper$Companion;

    invoke-virtual {p1}, Lcom/callapp/contacts/api/helper/backup/DropBoxHelper$Companion;->get()Lcom/callapp/contacts/api/helper/backup/DropBoxHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/api/helper/backup/DropBoxHelper;->isLoggedIn()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 181
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->hK:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    sget-object p2, Lcom/callapp/contacts/api/helper/backup/BackupViaType;->DROP_BOX:Lcom/callapp/contacts/api/helper/backup/BackupViaType;

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->set(Ljava/lang/Object;)V

    .line 182
    iget-object p1, p0, Lcom/callapp/contacts/api/helper/backup/BackupSetupActivity$initViews$5;->a:Lcom/callapp/contacts/api/helper/backup/BackupSetupActivity;

    invoke-virtual {p1}, Lcom/callapp/contacts/api/helper/backup/BackupSetupActivity;->getOkBtn()Landroid/widget/TextView;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    invoke-static {p1, p2, v0}, Lcom/callapp/contacts/api/helper/backup/BackupSetupActivity;->a(Lcom/callapp/contacts/api/helper/backup/BackupSetupActivity;Landroid/view/View;Z)V

    return-void

    .line 184
    :cond_3
    sget-object p1, Lcom/callapp/contacts/api/helper/backup/DropBoxHelper;->c:Lcom/callapp/contacts/api/helper/backup/DropBoxHelper$Companion;

    invoke-virtual {p1}, Lcom/callapp/contacts/api/helper/backup/DropBoxHelper$Companion;->get()Lcom/callapp/contacts/api/helper/backup/DropBoxHelper;

    move-result-object p1

    iget-object p2, p0, Lcom/callapp/contacts/api/helper/backup/BackupSetupActivity$initViews$5;->a:Lcom/callapp/contacts/api/helper/backup/BackupSetupActivity;

    invoke-virtual {p2}, Lcom/callapp/contacts/api/helper/backup/BackupSetupActivity;->getDropboxLoginListener()Lcom/callapp/contacts/api/helper/backup/BackupLoginCallBack;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/api/helper/backup/DropBoxHelper;->setLoginListener(Lcom/callapp/contacts/api/helper/backup/BackupLoginCallBack;)V

    .line 185
    sget-object p1, Lcom/callapp/contacts/api/helper/backup/DropBoxHelper;->c:Lcom/callapp/contacts/api/helper/backup/DropBoxHelper$Companion;

    invoke-virtual {p1}, Lcom/callapp/contacts/api/helper/backup/DropBoxHelper$Companion;->get()Lcom/callapp/contacts/api/helper/backup/DropBoxHelper;

    move-result-object p1

    iget-object p2, p0, Lcom/callapp/contacts/api/helper/backup/BackupSetupActivity$initViews$5;->a:Lcom/callapp/contacts/api/helper/backup/BackupSetupActivity;

    check-cast p2, Landroid/app/Activity;

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/api/helper/backup/DropBoxHelper;->a(Landroid/app/Activity;)V

    return-void
.end method
