.class public Landroidx/media2/widget/VideoView$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lsz$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/widget/VideoView;->c(Landroidx/media2/common/MediaMetadata;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/media2/widget/VideoView;


# direct methods
.method public constructor <init>(Landroidx/media2/widget/VideoView;)V
    .locals 0

    iput-object p1, p0, Landroidx/media2/widget/VideoView$d;->a:Landroidx/media2/widget/VideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lsz;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lsz;->f(I)I

    move-result p1

    iget-object v0, p0, Landroidx/media2/widget/VideoView$d;->a:Landroidx/media2/widget/VideoView;

    iget-object v0, v0, Landroidx/media2/widget/VideoView;->k:Ltw;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    return-void
.end method
