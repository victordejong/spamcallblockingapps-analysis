.class public final synthetic Lcom/callapp/contacts/activity/contact/list/-$$Lambda$UpdateManager$X0AfM4ZVSvfrHo0A706VE8nDZ4I;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/play/core/tasks/c;


# instance fields
.field public final synthetic f$0:Landroid/app/Activity;

.field public final synthetic f$1:Lcom/google/android/play/core/appupdate/c;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;Lcom/google/android/play/core/appupdate/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/-$$Lambda$UpdateManager$X0AfM4ZVSvfrHo0A706VE8nDZ4I;->f$0:Landroid/app/Activity;

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/list/-$$Lambda$UpdateManager$X0AfM4ZVSvfrHo0A706VE8nDZ4I;->f$1:Lcom/google/android/play/core/appupdate/c;

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/-$$Lambda$UpdateManager$X0AfM4ZVSvfrHo0A706VE8nDZ4I;->f$0:Landroid/app/Activity;

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/list/-$$Lambda$UpdateManager$X0AfM4ZVSvfrHo0A706VE8nDZ4I;->f$1:Lcom/google/android/play/core/appupdate/c;

    check-cast p1, Lcom/google/android/play/core/appupdate/a;

    invoke-static {v0, v1, p1}, Lcom/callapp/contacts/activity/contact/list/UpdateManager;->lambda$X0AfM4ZVSvfrHo0A706VE8nDZ4I(Landroid/app/Activity;Lcom/google/android/play/core/appupdate/c;Lcom/google/android/play/core/appupdate/a;)V

    return-void
.end method
