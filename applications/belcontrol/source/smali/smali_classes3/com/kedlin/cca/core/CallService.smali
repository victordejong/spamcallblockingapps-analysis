.class public Lcom/kedlin/cca/core/CallService;
.super Landroid/telecom/InCallService;
.source ""

# interfaces
.implements Lm91$b;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x17
.end annotation


# static fields
.field public static final c:Ljava/lang/String;

.field public static final d:Ljava/lang/String;


# instance fields
.field public a:Landroid/os/Handler;

.field public b:Landroid/telecom/Call$Callback;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/kedlin/cca/core/CallService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kedlin/cca/core/CallService;->c:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/kedlin/cca/core/CallService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".CATEGORY_ADD_CALL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kedlin/cca/core/CallService;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/telecom/InCallService;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/kedlin/cca/core/CallService;->a:Landroid/os/Handler;

    new-instance v0, Lcom/kedlin/cca/core/CallService$a;

    invoke-direct {v0, p0}, Lcom/kedlin/cca/core/CallService$a;-><init>(Lcom/kedlin/cca/core/CallService;)V

    iput-object v0, p0, Lcom/kedlin/cca/core/CallService;->b:Landroid/telecom/Call$Callback;

    return-void
.end method

.method public static synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/kedlin/cca/core/CallService;->c:Ljava/lang/String;

    return-object v0
.end method

.method private synthetic b()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    sget-object v1, Lcom/kedlin/cca/core/CallService;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/telecom/InCallService;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public synthetic c()V
    .locals 0

    invoke-direct {p0}, Lcom/kedlin/cca/core/CallService;->b()V

    return-void
.end method

.method public d(Li91;Ln91$b;)V
    .locals 1

    invoke-virtual {p1}, Li91;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lu71;->F(Ljava/lang/String;)V

    invoke-static {p1, p2}, Lz91;->q(Li91;Ln91$b;)V

    sget-object v0, Lq71$e;->b:Lq71$e;

    invoke-static {v0, p1, p2}, Lfa1;->D(Lq71$e;Li91;Ln91$b;)V

    return-void
.end method

.method public i(Lm91$c;Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm91$c;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    sget-object p2, Lm91$c;->h:Lm91$c;

    if-ne p1, p2, :cond_3

    iget-object p1, p0, Lcom/kedlin/cca/core/CallService;->a:Landroid/os/Handler;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    check-cast p3, Lg61;

    invoke-static {}, Lfa1;->x()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Lf61;->h()Lf61;

    move-result-object p1

    const/4 p2, 0x1

    if-eqz p3, :cond_0

    iget-object v0, p3, Lg61;->l:Lg61$b;

    sget-object v1, Lg61$b;->c:Lg61$b;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/kedlin/cca/core/CallService;->c:Ljava/lang/String;

    const-string v1, " realtime voice_mail mode, cancel the call"

    invoke-static {v0, v1}, Lj91;->q(Ljava/lang/Object;Ljava/lang/String;)V

    iput-boolean p2, p3, Lg61;->o:Z

    iget-object p2, p3, Lg61;->c:Landroid/telecom/Call;

    invoke-virtual {p1, p2}, Lf61;->c(Landroid/telecom/Call;)V

    return-void

    :cond_0
    if-eqz p3, :cond_1

    iget-object v0, p3, Lg61;->l:Lg61$b;

    sget-object v1, Lg61$b;->d:Lg61$b;

    if-ne v0, v1, :cond_1

    sget-object p2, Lcom/kedlin/cca/core/CallService;->c:Ljava/lang/String;

    const-string v0, "realtime disconnect mode, accept the call"

    invoke-static {p2, v0}, Lj91;->q(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p3, Lg61;->c:Landroid/telecom/Call;

    invoke-virtual {p1, p2}, Lf61;->a(Landroid/telecom/Call;)V

    return-void

    :cond_1
    if-eqz p3, :cond_2

    iget-object p1, p3, Lg61;->l:Lg61$b;

    sget-object v0, Lg61$b;->b:Lg61$b;

    if-ne p1, v0, :cond_2

    sget-object p1, Lcom/kedlin/cca/core/CallService;->c:Ljava/lang/String;

    const-string v0, "realtime ignore mode, already muted"

    invoke-static {p1, v0}, Lj91;->q(Ljava/lang/Object;Ljava/lang/String;)V

    iput-boolean p2, p3, Lg61;->o:Z

    goto :goto_0

    :cond_2
    invoke-static {}, Lo91;->e()V

    :goto_0
    new-instance p1, Landroid/content/Intent;

    const-class p2, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;

    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 p2, 0x14000000

    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    sget-object p2, Lcom/kedlin/cca/core/CallService;->d:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/telecom/InCallService;->startActivity(Landroid/content/Intent;)V

    :cond_3
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    invoke-static {}, Lj71;->d()Lj71;

    move-result-object v0

    invoke-virtual {v0, p0}, Lj71;->e(Landroid/content/Context;)V

    invoke-static {}, Lf61;->h()Lf61;

    move-result-object v0

    invoke-virtual {v0, p0}, Lf61;->q(Landroid/telecom/InCallService;)V

    invoke-static {}, Lf61;->h()Lf61;

    move-result-object v0

    invoke-virtual {p0}, Landroid/telecom/InCallService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lf61;->r(Landroid/content/Context;)V

    invoke-super {p0, p1}, Landroid/telecom/InCallService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method

.method public onBringToForeground(Z)V
    .locals 0

    return-void
.end method

.method public onCallAdded(Landroid/telecom/Call;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/telecom/InCallService;->onCallAdded(Landroid/telecom/Call;)V

    invoke-static {}, Lf61;->h()Lf61;

    move-result-object v0

    sget-object v1, Lm91$c;->h:Lm91$c;

    invoke-static {v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-static {p0, v1, v3}, Lm91;->d(Lm91$b;Ljava/util/EnumSet;[Ljava/lang/Class;)V

    invoke-virtual {v0, p1}, Lf61;->b(Landroid/telecom/Call;)V

    iget-object v1, p0, Lcom/kedlin/cca/core/CallService;->b:Landroid/telecom/Call$Callback;

    invoke-virtual {p1, v1}, Landroid/telecom/Call;->registerCallback(Landroid/telecom/Call$Callback;)V

    iget-object v1, v0, Lf61;->d:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg61;

    sget-object v3, Lw91$a;->a:Lw91$a;

    invoke-static {p0, v3}, Lw91;->b(Ljava/lang/Object;Lw91$a;)V

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    iget-object v4, v1, Lg61;->l:Lg61$b;

    sget-object v5, Lg61$b;->c:Lg61$b;

    if-ne v4, v5, :cond_0

    sget-object v2, Lcom/kedlin/cca/core/CallService;->c:Ljava/lang/String;

    const-string v4, "voice_mail mode, cancel the call"

    invoke-static {v2, v4}, Lj91;->q(Ljava/lang/Object;Ljava/lang/String;)V

    iput-boolean v3, v1, Lg61;->o:Z

    invoke-virtual {v0, p1}, Lf61;->c(Landroid/telecom/Call;)V

    return-void

    :cond_0
    if-eqz v1, :cond_1

    iget-object v4, v1, Lg61;->l:Lg61$b;

    sget-object v5, Lg61$b;->d:Lg61$b;

    if-ne v4, v5, :cond_1

    iput-boolean v3, v1, Lg61;->o:Z

    sget-object v1, Lcom/kedlin/cca/core/CallService;->c:Ljava/lang/String;

    const-string v2, "disconnect mode, accept the call"

    invoke-static {v1, v2}, Lj91;->q(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lf61;->a(Landroid/telecom/Call;)V

    return-void

    :cond_1
    if-eqz v1, :cond_2

    iget-object v4, v1, Lg61;->l:Lg61$b;

    sget-object v5, Lg61$b;->b:Lg61$b;

    if-ne v4, v5, :cond_2

    sget-object v4, Lcom/kedlin/cca/core/CallService;->c:Ljava/lang/String;

    const-string v5, "ignore mode, just silence call"

    invoke-static {v4, v5}, Lj91;->q(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Lo91$c;->a:Lo91$c;

    invoke-static {v4}, Lo91;->a(Lo91$c;)V

    iput-boolean v3, v1, Lg61;->o:Z

    :cond_2
    invoke-virtual {v0}, Lf61;->j()Lux0;

    move-result-object v4

    invoke-virtual {v0, p1, v4}, Lf61;->v(Landroid/telecom/Call;Le61;)V

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lg61;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v2, 0x1

    :cond_3
    if-eqz v2, :cond_4

    iget-object v0, p0, Lcom/kedlin/cca/core/CallService;->a:Landroid/os/Handler;

    new-instance v1, Ld61;

    invoke-direct {v1, p0}, Ld61;-><init>(Lcom/kedlin/cca/core/CallService;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_4
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    sget-object v1, Lcom/kedlin/cca/core/CallService;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/telecom/InCallService;->startActivity(Landroid/content/Intent;)V

    :goto_0
    invoke-static {}, Lf61;->h()Lf61;

    move-result-object v0

    invoke-virtual {v0, p1}, Lf61;->z(Landroid/telecom/Call;)V

    return-void
.end method

.method public onCallAudioStateChanged(Landroid/telecom/CallAudioState;)V
    .locals 1

    invoke-static {}, Lj71;->d()Lj71;

    move-result-object v0

    invoke-virtual {v0, p1}, Lj71;->f(Landroid/telecom/CallAudioState;)V

    return-void
.end method

.method public onCallRemoved(Landroid/telecom/Call;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/telecom/InCallService;->onCallRemoved(Landroid/telecom/Call;)V

    invoke-static {}, Lf61;->h()Lf61;

    move-result-object v0

    invoke-virtual {v0, p1}, Lf61;->z(Landroid/telecom/Call;)V

    invoke-static {}, Lf61;->h()Lf61;

    move-result-object v0

    invoke-virtual {v0, p1}, Lf61;->n(Landroid/telecom/Call;)V

    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 0

    invoke-super {p0, p1}, Landroid/telecom/InCallService;->onUnbind(Landroid/content/Intent;)Z

    invoke-static {p0}, Lm91;->e(Lm91$b;)V

    invoke-static {}, Lf61;->h()Lf61;

    move-result-object p1

    invoke-virtual {p1}, Lf61;->e()V

    invoke-static {}, Lf61;->h()Lf61;

    move-result-object p1

    invoke-virtual {p1}, Lf61;->d()V

    new-instance p1, Lm81;

    invoke-direct {p1}, Lm81;-><init>()V

    invoke-virtual {p1}, Lm81;->F()V

    invoke-static {}, Lo91;->e()V

    const/4 p1, 0x0

    return p1
.end method
