.class final Landroidx/media2/widget/VideoView$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/j/a/b$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/widget/VideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/media2/widget/VideoView;


# direct methods
.method constructor <init>(Landroidx/media2/widget/VideoView;)V
    .locals 0

    .line 694
    iput-object p1, p0, Landroidx/media2/widget/VideoView$4;->a:Landroidx/media2/widget/VideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/j/a/b;)V
    .locals 1

    .line 1349
    iget-object v0, p1, Landroidx/j/a/b;->a:Landroidx/j/a/b$d;

    if-eqz v0, :cond_0

    iget-object p1, p1, Landroidx/j/a/b;->a:Landroidx/j/a/b$d;

    .line 1480
    iget p1, p1, Landroidx/j/a/b$d;->a:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 698
    :goto_0
    iget-object v0, p0, Landroidx/media2/widget/VideoView$4;->a:Landroidx/media2/widget/VideoView;

    iget-object v0, v0, Landroidx/media2/widget/VideoView;->i:Landroidx/media2/widget/j;

    invoke-virtual {v0, p1}, Landroidx/media2/widget/j;->setBackgroundColor(I)V

    return-void
.end method
