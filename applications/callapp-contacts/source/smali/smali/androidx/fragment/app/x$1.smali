.class final Landroidx/fragment/app/x$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/fragment/app/x;


# direct methods
.method constructor <init>(Landroidx/fragment/app/x;)V
    .locals 0

    .line 53
    iput-object p1, p0, Landroidx/fragment/app/x$1;->a:Landroidx/fragment/app/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 56
    iget-object v0, p0, Landroidx/fragment/app/x$1;->a:Landroidx/fragment/app/x;

    iget-object v0, v0, Landroidx/fragment/app/x;->b:Landroid/widget/ListView;

    iget-object v1, p0, Landroidx/fragment/app/x$1;->a:Landroidx/fragment/app/x;

    iget-object v1, v1, Landroidx/fragment/app/x;->b:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->focusableViewAvailable(Landroid/view/View;)V

    return-void
.end method
