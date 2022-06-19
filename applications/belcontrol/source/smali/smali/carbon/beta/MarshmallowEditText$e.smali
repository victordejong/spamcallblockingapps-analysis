.class public Lcarbon/beta/MarshmallowEditText$e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcarbon/beta/MarshmallowEditText;->O()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcarbon/beta/MarshmallowEditText;


# direct methods
.method public constructor <init>(Lcarbon/beta/MarshmallowEditText;)V
    .locals 0

    iput-object p1, p0, Lcarbon/beta/MarshmallowEditText$e;->a:Lcarbon/beta/MarshmallowEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 0

    iget-object p1, p0, Lcarbon/beta/MarshmallowEditText$e;->a:Lcarbon/beta/MarshmallowEditText;

    invoke-static {p1, p2}, Lcarbon/beta/MarshmallowEditText;->L(Lcarbon/beta/MarshmallowEditText;Landroid/view/Menu;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 0

    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
