.class public final synthetic Lpx0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field public final synthetic a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpx0;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment;

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lpx0;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment;

    invoke-virtual {v0, p1, p2, p3}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment;->b0(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
