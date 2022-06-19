.class final Landroidx/fragment/app/c$5;
.super Landroidx/fragment/app/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/c;->createFragmentContainer()Landroidx/fragment/app/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/fragment/app/e;

.field final synthetic b:Landroidx/fragment/app/c;


# direct methods
.method constructor <init>(Landroidx/fragment/app/c;Landroidx/fragment/app/e;)V
    .locals 0

    .line 506
    iput-object p1, p0, Landroidx/fragment/app/c$5;->b:Landroidx/fragment/app/c;

    iput-object p2, p0, Landroidx/fragment/app/c$5;->a:Landroidx/fragment/app/e;

    invoke-direct {p0}, Landroidx/fragment/app/e;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Landroid/view/View;
    .locals 2

    .line 510
    iget-object v0, p0, Landroidx/fragment/app/c$5;->a:Landroidx/fragment/app/e;

    invoke-virtual {v0}, Landroidx/fragment/app/e;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 511
    iget-object v0, p0, Landroidx/fragment/app/c$5;->a:Landroidx/fragment/app/e;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/e;->a(I)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 513
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/c$5;->b:Landroidx/fragment/app/c;

    .line 1525
    iget-object v1, v0, Landroidx/fragment/app/c;->a:Landroid/app/Dialog;

    if-eqz v1, :cond_1

    .line 1526
    iget-object v0, v0, Landroidx/fragment/app/c;->a:Landroid/app/Dialog;

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a()Z
    .locals 1

    .line 518
    iget-object v0, p0, Landroidx/fragment/app/c$5;->a:Landroidx/fragment/app/e;

    invoke-virtual {v0}, Landroidx/fragment/app/e;->a()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/fragment/app/c$5;->b:Landroidx/fragment/app/c;

    .line 1532
    iget-boolean v0, v0, Landroidx/fragment/app/c;->b:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method
