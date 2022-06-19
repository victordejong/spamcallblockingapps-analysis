.class public final synthetic Lf31;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnScrollChangeListener;


# instance fields
.field public final synthetic a:Lpq0;


# direct methods
.method public synthetic constructor <init>(Lpq0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf31;->a:Lpq0;

    return-void
.end method


# virtual methods
.method public final onScrollChange(Landroid/view/View;IIII)V
    .locals 6

    iget-object v0, p0, Lf31;->a:Lpq0;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/support/SupportFragment;->O(Lpq0;Landroid/view/View;IIII)V

    return-void
.end method
