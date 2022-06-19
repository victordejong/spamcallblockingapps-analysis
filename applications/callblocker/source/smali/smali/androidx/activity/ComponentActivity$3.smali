.class Landroidx/activity/ComponentActivity$3;
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
    .line 108
    iput-object p1, p0, Landroidx/activity/ComponentActivity$3;->a:Landroidx/activity/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/lifecycle/h;Landroidx/lifecycle/e$a;)V
    .locals 1

    .prologue
    .line 112
    sget-object v0, Landroidx/lifecycle/e$a;->ON_DESTROY:Landroidx/lifecycle/e$a;

    if-ne p2, v0, :cond_0

    .line 113
    iget-object v0, p0, Landroidx/activity/ComponentActivity$3;->a:Landroidx/activity/b;

    invoke-virtual {v0}, Landroidx/activity/b;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_0

    .line 114
    iget-object v0, p0, Landroidx/activity/ComponentActivity$3;->a:Landroidx/activity/b;

    invoke-virtual {v0}, Landroidx/activity/b;->c()Landroidx/lifecycle/u;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/u;->a()V

    .line 117
    :cond_0
    return-void
.end method
