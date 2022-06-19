.class public final Lorg/mistergroup/shouldianswer/services/incall/c$b;
.super Ljava/util/TimerTask;
.source "MyInCallPresenter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/services/incall/c;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .locals 0

    .line 422
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/services/incall/c$b;->a:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 424
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/services/incall/c$b;->a:Landroid/os/Handler;

    sget-object v1, Lorg/mistergroup/shouldianswer/services/incall/c$b$a;->a:Lorg/mistergroup/shouldianswer/services/incall/c$b$a;

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
