.class Landroidx/activity/ComponentActivity$2;
.super Ljava/lang/Object;
.source "ComponentActivity.java"

# interfaces
.implements Landroidx/lifecycle/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/activity/b;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/activity/b;


# direct methods
.method constructor <init>(Landroidx/activity/b;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Landroidx/activity/ComponentActivity$2;->a:Landroidx/activity/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/lifecycle/h;Landroidx/lifecycle/e$a;)V
    .locals 1

    .prologue
    .line 98
    sget-object v0, Landroidx/lifecycle/e$a;->ON_STOP:Landroidx/lifecycle/e$a;

    if-ne p2, v0, :cond_0

    .line 99
    iget-object v0, p0, Landroidx/activity/ComponentActivity$2;->a:Landroidx/activity/b;

    invoke-virtual {v0}, Landroidx/activity/b;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 100
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v0

    .line 101
    :goto_0
    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {v0}, Landroid/view/View;->cancelPendingInputEvents()V

    .line 105
    :cond_0
    return-void

    .line 100
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
