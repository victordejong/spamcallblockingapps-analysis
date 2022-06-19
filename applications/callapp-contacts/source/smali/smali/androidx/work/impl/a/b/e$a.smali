.class final Landroidx/work/impl/a/b/e$a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/impl/a/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Landroidx/work/impl/a/b/e;


# direct methods
.method constructor <init>(Landroidx/work/impl/a/b/e;)V
    .locals 0

    .line 185
    iput-object p1, p0, Landroidx/work/impl/a/b/e$a;->a:Landroidx/work/impl/a/b/e;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    if-eqz p2, :cond_1

    .line 190
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 193
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 194
    invoke-static {}, Landroidx/work/k;->a()Landroidx/work/k;

    sget-object p1, Landroidx/work/impl/a/b/e;->d:Ljava/lang/String;

    .line 195
    iget-object p1, p0, Landroidx/work/impl/a/b/e$a;->a:Landroidx/work/impl/a/b/e;

    invoke-virtual {p1}, Landroidx/work/impl/a/b/e;->a()Landroidx/work/impl/a/b;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/work/impl/a/b/e;->a(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method
