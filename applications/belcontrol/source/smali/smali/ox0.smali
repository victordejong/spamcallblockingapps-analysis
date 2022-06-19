.class public final synthetic Lox0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lox0;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lox0;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment;

    invoke-virtual {v0, p1, p2}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment;->Z(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
