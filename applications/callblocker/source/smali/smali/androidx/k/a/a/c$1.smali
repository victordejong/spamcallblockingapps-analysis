.class Landroidx/k/a/a/c$1;
.super Ljava/lang/Object;
.source "AnimatedVectorDrawableCompat.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/k/a/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/k/a/a/c;


# direct methods
.method constructor <init>(Landroidx/k/a/a/c;)V
    .locals 0

    .prologue
    .line 733
    iput-object p1, p0, Landroidx/k/a/a/c$1;->a:Landroidx/k/a/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 736
    iget-object v0, p0, Landroidx/k/a/a/c$1;->a:Landroidx/k/a/a/c;

    invoke-virtual {v0}, Landroidx/k/a/a/c;->invalidateSelf()V

    .line 737
    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 1

    .prologue
    .line 741
    iget-object v0, p0, Landroidx/k/a/a/c$1;->a:Landroidx/k/a/a/c;

    invoke-virtual {v0, p2, p3, p4}, Landroidx/k/a/a/c;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 742
    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 746
    iget-object v0, p0, Landroidx/k/a/a/c$1;->a:Landroidx/k/a/a/c;

    invoke-virtual {v0, p2}, Landroidx/k/a/a/c;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 747
    return-void
.end method
