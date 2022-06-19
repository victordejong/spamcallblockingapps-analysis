.class public Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->c0(Lg61;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/telecom/PhoneAccountHandle;

.field public final synthetic b:Landroid/telecom/TelecomManager;

.field public final synthetic c:Lg61;

.field public final synthetic d:Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;


# direct methods
.method public constructor <init>(Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;Landroid/telecom/PhoneAccountHandle;Landroid/telecom/TelecomManager;Lg61;)V
    .locals 0

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity$c;->d:Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;

    iput-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity$c;->a:Landroid/telecom/PhoneAccountHandle;

    iput-object p3, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity$c;->b:Landroid/telecom/TelecomManager;

    iput-object p4, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity$c;->c:Lg61;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity$c;->a:Landroid/telecom/PhoneAccountHandle;

    const-string v1, "android.telecom.extra.PHONE_ACCOUNT_HANDLE"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity$c;->b:Landroid/telecom/TelecomManager;

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity$c;->c:Lg61;

    iget-object v1, v1, Lg61;->g:Li91;

    invoke-virtual {v1}, Li91;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "tel"

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/telecom/TelecomManager;->placeCall(Landroid/net/Uri;Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity$c;->d:Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;

    invoke-static {p1}, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->A(Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
