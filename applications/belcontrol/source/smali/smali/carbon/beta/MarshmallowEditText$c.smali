.class public Lcarbon/beta/MarshmallowEditText$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcarbon/beta/MarshmallowEditText;->startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/view/ActionMode$Callback;

.field public final synthetic b:Lcarbon/beta/MarshmallowEditText;


# direct methods
.method public constructor <init>(Lcarbon/beta/MarshmallowEditText;Landroid/view/ActionMode$Callback;)V
    .locals 0

    iput-object p1, p0, Lcarbon/beta/MarshmallowEditText$c;->b:Lcarbon/beta/MarshmallowEditText;

    iput-object p2, p0, Lcarbon/beta/MarshmallowEditText$c;->a:Landroid/view/ActionMode$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lcarbon/beta/MarshmallowEditText$c;->a:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1

    iget-object v0, p0, Lcarbon/beta/MarshmallowEditText$c;->a:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    iget-object p1, p0, Lcarbon/beta/MarshmallowEditText$c;->b:Lcarbon/beta/MarshmallowEditText;

    invoke-static {p1, p2}, Lcarbon/beta/MarshmallowEditText;->L(Lcarbon/beta/MarshmallowEditText;Landroid/view/Menu;)V

    invoke-interface {p2}, Landroid/view/Menu;->clear()V

    const/4 p1, 0x1

    return p1
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 1

    iget-object v0, p0, Lcarbon/beta/MarshmallowEditText$c;->a:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p1}, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 0

    iget-object p1, p0, Lcarbon/beta/MarshmallowEditText$c;->b:Lcarbon/beta/MarshmallowEditText;

    invoke-static {p1}, Lcarbon/beta/MarshmallowEditText;->K(Lcarbon/beta/MarshmallowEditText;)V

    const/4 p1, 0x1

    return p1
.end method
