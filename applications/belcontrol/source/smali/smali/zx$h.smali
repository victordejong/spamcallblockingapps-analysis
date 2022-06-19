.class public Lzx$h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzx;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lzx;


# direct methods
.method public constructor <init>(Lzx;)V
    .locals 0

    iput-object p1, p0, Lzx$h;->a:Lzx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lzx$h;->a:Lzx;

    iget-boolean v0, p1, Lzx;->d0:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v0, p1, Lzx;->d0:Z

    if-eqz v0, :cond_0

    iget-object p1, p1, Lzx;->D:Landroidx/mediarouter/app/OverlayListView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setVisibility(I)V

    :cond_0
    iget-object p1, p0, Lzx$h;->a:Lzx;

    invoke-virtual {p1}, Lzx;->t()V

    iget-object p1, p0, Lzx$h;->a:Lzx;

    invoke-virtual {p1, v1}, Lzx;->D(Z)V

    return-void
.end method
