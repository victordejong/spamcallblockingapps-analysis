.class final Landroidx/fragment/app/FragmentManager$1;
.super Landroidx/activity/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/FragmentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroidx/fragment/app/FragmentManager;


# direct methods
.method constructor <init>(Landroidx/fragment/app/FragmentManager;Z)V
    .locals 0

    .line 433
    iput-object p1, p0, Landroidx/fragment/app/FragmentManager$1;->b:Landroidx/fragment/app/FragmentManager;

    invoke-direct {p0, p2}, Landroidx/activity/b;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 2

    .line 436
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager$1;->b:Landroidx/fragment/app/FragmentManager;

    const/4 v1, 0x1

    .line 1661
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->a(Z)Z

    .line 1662
    iget-object v1, v0, Landroidx/fragment/app/FragmentManager;->f:Landroidx/activity/b;

    .line 2082
    iget-boolean v1, v1, Landroidx/activity/b;->a:Z

    if-eqz v1, :cond_0

    .line 2692
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->d()Z

    return-void

    .line 1672
    :cond_0
    iget-object v0, v0, Landroidx/fragment/app/FragmentManager;->e:Landroidx/activity/OnBackPressedDispatcher;

    invoke-virtual {v0}, Landroidx/activity/OnBackPressedDispatcher;->a()V

    return-void
.end method
