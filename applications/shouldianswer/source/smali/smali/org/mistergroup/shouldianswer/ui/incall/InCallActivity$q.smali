.class final Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$q;
.super Ljava/lang/Object;
.source "InCallActivity.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->t()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$q;->a:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 3

    .line 258
    sget-object p1, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 v0, 0x0

    const-string v1, "InCallActivity.onSelectPhoneAccountState dismissed so we disconnect the call!"

    const/4 v2, 0x2

    invoke-static {p1, v1, v0, v2, v0}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 259
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$q;->a:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;

    invoke-static {p1}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->b(Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;)Lorg/mistergroup/shouldianswer/services/incall/a;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/services/incall/a;->i()Landroid/telecom/Call;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/telecom/Call;->disconnect()V

    :cond_0
    return-void
.end method
