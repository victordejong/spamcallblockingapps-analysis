.class public final Lorg/mistergroup/shouldianswer/services/incall/MyInCallService;
.super Landroid/telecom/InCallService;
.source "MyInCallService.kt"


# instance fields
.field private a:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 22
    invoke-direct {p0}, Landroid/telecom/InCallService;-><init>()V

    .line 25
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 v1, 0x0

    const-string v2, "MyInCallService()"

    const/4 v3, 0x2

    invoke-static {v0, v2, v1, v3, v1}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 26
    sget-object v0, Lorg/mistergroup/shouldianswer/services/incall/c;->a:Lorg/mistergroup/shouldianswer/services/incall/c;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lorg/mistergroup/shouldianswer/services/incall/c;->b(Ljava/lang/ref/WeakReference;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Date;
    .locals 1

    .line 23
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/services/incall/MyInCallService;->a:Ljava/util/Date;

    return-object v0
.end method

.method public final a(Ljava/util/Date;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/services/incall/MyInCallService;->a:Ljava/util/Date;

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 4

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 v1, 0x0

    const-string v2, "MyInCallService.onBind"

    const/4 v3, 0x2

    invoke-static {v0, v2, v1, v3, v1}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 31
    sget-object v0, Lorg/mistergroup/shouldianswer/services/incall/c;->a:Lorg/mistergroup/shouldianswer/services/incall/c;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/services/incall/c;->e()V

    .line 32
    invoke-super {p0, p1}, Landroid/telecom/InCallService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method

.method public onBringToForeground(Z)V
    .locals 0

    .line 46
    invoke-super {p0, p1}, Landroid/telecom/InCallService;->onBringToForeground(Z)V

    return-void
.end method

.method public onCallAdded(Landroid/telecom/Call;)V
    .locals 1

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    sget-object v0, Lorg/mistergroup/shouldianswer/services/incall/c;->a:Lorg/mistergroup/shouldianswer/services/incall/c;

    invoke-virtual {v0, p1}, Lorg/mistergroup/shouldianswer/services/incall/c;->a(Landroid/telecom/Call;)V

    return-void
.end method

.method public onCallAudioStateChanged(Landroid/telecom/CallAudioState;)V
    .locals 1

    const-string v0, "audioState"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-super {p0, p1}, Landroid/telecom/InCallService;->onCallAudioStateChanged(Landroid/telecom/CallAudioState;)V

    return-void
.end method

.method public onCallRemoved(Landroid/telecom/Call;)V
    .locals 1

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    sget-object v0, Lorg/mistergroup/shouldianswer/services/incall/c;->a:Lorg/mistergroup/shouldianswer/services/incall/c;

    invoke-virtual {v0, p1}, Lorg/mistergroup/shouldianswer/services/incall/c;->b(Landroid/telecom/Call;)V

    .line 55
    invoke-super {p0, p1}, Landroid/telecom/InCallService;->onCallRemoved(Landroid/telecom/Call;)V

    return-void
.end method

.method public onCanAddCallChanged(Z)V
    .locals 0

    .line 59
    invoke-super {p0, p1}, Landroid/telecom/InCallService;->onCanAddCallChanged(Z)V

    return-void
.end method

.method public onConnectionEvent(Landroid/telecom/Call;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "event"

    invoke-static {p2, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extras"

    invoke-static {p3, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    invoke-super {p0, p1, p2, p3}, Landroid/telecom/InCallService;->onConnectionEvent(Landroid/telecom/Call;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public onSilenceRinger()V
    .locals 0

    .line 63
    invoke-super {p0}, Landroid/telecom/InCallService;->onSilenceRinger()V

    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 4

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 v1, 0x0

    const-string v2, "MyInCallService.onUnbind"

    const/4 v3, 0x2

    invoke-static {v0, v2, v1, v3, v1}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 37
    sget-object v0, Lorg/mistergroup/shouldianswer/services/incall/c;->a:Lorg/mistergroup/shouldianswer/services/incall/c;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/services/incall/c;->f()V

    .line 38
    invoke-super {p0, p1}, Landroid/telecom/InCallService;->onUnbind(Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method
