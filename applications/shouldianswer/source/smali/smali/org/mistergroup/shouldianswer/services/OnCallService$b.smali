.class public final Lorg/mistergroup/shouldianswer/services/OnCallService$b;
.super Ljava/lang/Object;
.source "OnCallService.kt"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mistergroup/shouldianswer/services/OnCallService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "className"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "service"

    invoke-static {p2, p1}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    check-cast p2, Lorg/mistergroup/shouldianswer/services/OnCallService$c;

    .line 131
    invoke-virtual {p2}, Lorg/mistergroup/shouldianswer/services/OnCallService$c;->a()Lorg/mistergroup/shouldianswer/services/OnCallService;

    move-result-object p1

    invoke-static {p1}, Lorg/mistergroup/shouldianswer/services/OnCallService;->b(Lorg/mistergroup/shouldianswer/services/OnCallService;)V

    const/4 p1, 0x1

    .line 132
    invoke-static {p1}, Lorg/mistergroup/shouldianswer/services/OnCallService;->a(Z)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string v0, "arg0"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 136
    invoke-static {p1}, Lorg/mistergroup/shouldianswer/services/OnCallService;->a(Z)V

    const/4 p1, 0x0

    .line 137
    check-cast p1, Lorg/mistergroup/shouldianswer/services/OnCallService;

    invoke-static {p1}, Lorg/mistergroup/shouldianswer/services/OnCallService;->b(Lorg/mistergroup/shouldianswer/services/OnCallService;)V

    return-void
.end method
