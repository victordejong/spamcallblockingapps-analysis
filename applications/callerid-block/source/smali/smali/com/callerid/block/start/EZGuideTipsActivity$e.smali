.class Lcom/callerid/block/start/EZGuideTipsActivity$e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/callerid/block/util/s$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/start/EZGuideTipsActivity;->f0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callerid/block/start/EZGuideTipsActivity;


# direct methods
.method constructor <init>(Lcom/callerid/block/start/EZGuideTipsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/start/EZGuideTipsActivity$e;->a:Lcom/callerid/block/start/EZGuideTipsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/callerid/block/start/EZGuideTipsActivity$e;->a:Lcom/callerid/block/start/EZGuideTipsActivity;

    invoke-static {v0}, Lcom/callerid/block/start/EZGuideTipsActivity;->V(Lcom/callerid/block/start/EZGuideTipsActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/callerid/block/start/EZGuideTipsActivity$e;->a:Lcom/callerid/block/start/EZGuideTipsActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/callerid/block/start/EZGuideTipsActivity;->W(Lcom/callerid/block/start/EZGuideTipsActivity;Z)Z

    const-string v0, "first_enter"

    const-string v1, "keycode_home"

    invoke-static {v0, v1}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object v0

    const-string v1, "guide1_key_home"

    invoke-virtual {v0, v1}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/callerid/block/start/EZGuideTipsActivity$e;->a:Lcom/callerid/block/start/EZGuideTipsActivity;

    invoke-static {v0}, Lcom/callerid/block/start/EZGuideTipsActivity;->V(Lcom/callerid/block/start/EZGuideTipsActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/callerid/block/start/EZGuideTipsActivity$e;->a:Lcom/callerid/block/start/EZGuideTipsActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/callerid/block/start/EZGuideTipsActivity;->W(Lcom/callerid/block/start/EZGuideTipsActivity;Z)Z

    const-string v0, "first_enter"

    const-string v1, "HomeLongPressed"

    invoke-static {v0, v1}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object v0

    const-string v1, "homelongpressed"

    invoke-virtual {v0, v1}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
