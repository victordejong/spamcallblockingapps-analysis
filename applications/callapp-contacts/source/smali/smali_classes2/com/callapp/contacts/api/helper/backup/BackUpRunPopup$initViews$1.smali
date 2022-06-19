.class final Lcom/callapp/contacts/api/helper/backup/BackUpRunPopup$initViews$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/api/helper/backup/BackUpRunPopup;
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
        "onClick"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/api/helper/backup/BackUpRunPopup;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/api/helper/backup/BackUpRunPopup;)V
    .locals 0

    iput-object p1, p0, Lcom/callapp/contacts/api/helper/backup/BackUpRunPopup$initViews$1;->a:Lcom/callapp/contacts/api/helper/backup/BackUpRunPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 39
    iget-object p1, p0, Lcom/callapp/contacts/api/helper/backup/BackUpRunPopup$initViews$1;->a:Lcom/callapp/contacts/api/helper/backup/BackUpRunPopup;

    invoke-virtual {p1}, Lcom/callapp/contacts/api/helper/backup/BackUpRunPopup;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/app/Activity;)V

    const/4 p1, 0x1

    .line 40
    invoke-static {p1}, Lcom/callapp/contacts/api/helper/backup/BackupUtils;->a(Z)V

    .line 41
    iget-object p1, p0, Lcom/callapp/contacts/api/helper/backup/BackUpRunPopup$initViews$1;->a:Lcom/callapp/contacts/api/helper/backup/BackUpRunPopup;

    invoke-virtual {p1}, Lcom/callapp/contacts/api/helper/backup/BackUpRunPopup;->dismiss()V

    return-void
.end method
