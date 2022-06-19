.class final Lorg/mistergroup/shouldianswer/utils/l$a$a;
.super Lkotlin/e/b/i;
.source "MigrationHelper.kt"

# interfaces
.implements Lkotlin/e/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/utils/l$a;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/e/b/i;",
        "Lkotlin/e/a/b<",
        "Ljava/lang/String;",
        "Lkotlin/o;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lorg/mistergroup/shouldianswer/utils/l$a;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/utils/l$a;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/utils/l$a$a;->a:Lorg/mistergroup/shouldianswer/utils/l$a;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/e/b/i;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 90
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/mistergroup/shouldianswer/utils/l$a$a;->a(Ljava/lang/String;)V

    sget-object p1, Lkotlin/o;->a:Lkotlin/o;

    return-object p1
.end method

.method public final a(Ljava/lang/String;)V
    .locals 4

    .line 134
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 v1, 0x0

    const-string v2, "MigrationHelper.migrate invokeCallback"

    const/4 v3, 0x2

    invoke-static {v0, v2, v1, v3, v1}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 135
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/utils/l$a$a;->a:Lorg/mistergroup/shouldianswer/utils/l$a;

    invoke-static {v0}, Lorg/mistergroup/shouldianswer/utils/l$a;->a(Lorg/mistergroup/shouldianswer/utils/l$a;)Lkotlin/e/a/b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lkotlin/e/a/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/o;

    .line 136
    :cond_0
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/utils/l$a$a;->a:Lorg/mistergroup/shouldianswer/utils/l$a;

    invoke-static {p1}, Lorg/mistergroup/shouldianswer/utils/l$a;->b(Lorg/mistergroup/shouldianswer/utils/l$a;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/mistergroup/shouldianswer/utils/l$a$a;->a:Lorg/mistergroup/shouldianswer/utils/l$a;

    invoke-static {p1}, Lorg/mistergroup/shouldianswer/utils/l$a;->c(Lorg/mistergroup/shouldianswer/utils/l$a;)Landroid/os/Messenger;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 137
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/utils/l$a$a;->a:Lorg/mistergroup/shouldianswer/utils/l$a;

    invoke-static {p1}, Lorg/mistergroup/shouldianswer/utils/l$a;->d(Lorg/mistergroup/shouldianswer/utils/l$a;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lorg/mistergroup/shouldianswer/utils/l$a$a;->a:Lorg/mistergroup/shouldianswer/utils/l$a;

    check-cast v0, Landroid/content/ServiceConnection;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_1
    return-void
.end method
