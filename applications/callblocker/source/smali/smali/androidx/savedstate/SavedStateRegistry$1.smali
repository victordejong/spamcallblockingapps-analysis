.class Landroidx/savedstate/SavedStateRegistry$1;
.super Ljava/lang/Object;
.source "SavedStateRegistry.java"

# interfaces
.implements Landroidx/lifecycle/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/savedstate/a;->a(Landroidx/lifecycle/e;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/savedstate/a;


# direct methods
.method constructor <init>(Landroidx/savedstate/a;)V
    .locals 0

    .prologue
    .line 197
    iput-object p1, p0, Landroidx/savedstate/SavedStateRegistry$1;->a:Landroidx/savedstate/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/lifecycle/h;Landroidx/lifecycle/e$a;)V
    .locals 2

    .prologue
    .line 200
    sget-object v0, Landroidx/lifecycle/e$a;->ON_START:Landroidx/lifecycle/e$a;

    if-ne p2, v0, :cond_1

    .line 201
    iget-object v0, p0, Landroidx/savedstate/SavedStateRegistry$1;->a:Landroidx/savedstate/a;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/savedstate/a;->a:Z

    .line 205
    :cond_0
    :goto_0
    return-void

    .line 202
    :cond_1
    sget-object v0, Landroidx/lifecycle/e$a;->ON_STOP:Landroidx/lifecycle/e$a;

    if-ne p2, v0, :cond_0

    .line 203
    iget-object v0, p0, Landroidx/savedstate/SavedStateRegistry$1;->a:Landroidx/savedstate/a;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/savedstate/a;->a:Z

    goto :goto_0
.end method
