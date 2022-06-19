.class public final synthetic Lwz0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field public final synthetic a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentListFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentListFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwz0;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentListFragment;

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lwz0;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentListFragment;

    invoke-virtual {v0, p1, p2, p3}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentListFragment;->K(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
