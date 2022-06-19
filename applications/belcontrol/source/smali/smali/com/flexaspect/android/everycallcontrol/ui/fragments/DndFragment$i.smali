.class public Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment$i;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "i"
.end annotation


# instance fields
.field public final synthetic a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment;


# direct methods
.method public constructor <init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment$i;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment$i;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment;

    invoke-virtual {v0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment;->I(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
