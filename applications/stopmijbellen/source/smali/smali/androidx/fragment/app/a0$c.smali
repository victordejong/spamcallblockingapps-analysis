.class public Landroidx/fragment/app/a0$c;
.super Landroidx/activity/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/a0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Landroidx/fragment/app/a0;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/a0;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/fragment/app/a0$c;->c:Landroidx/fragment/app/a0;

    invoke-direct {p0, p2}, Landroidx/activity/b;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/a0$c;->c:Landroidx/fragment/app/a0;

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Landroidx/fragment/app/a0;->C(Z)Z

    .line 3
    iget-object v1, v0, Landroidx/fragment/app/a0;->h:Landroidx/activity/b;

    .line 4
    iget-boolean v1, v1, Landroidx/activity/b;->a:Z

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v0}, Landroidx/fragment/app/a0;->W()Z

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, v0, Landroidx/fragment/app/a0;->g:Landroidx/activity/OnBackPressedDispatcher;

    invoke-virtual {v0}, Landroidx/activity/OnBackPressedDispatcher;->b()V

    :goto_0
    return-void
.end method
