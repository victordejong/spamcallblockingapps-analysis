.class final Landroidx/media2/widget/g$1;
.super Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/widget/g;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/media2/widget/g;


# direct methods
.method constructor <init>(Landroidx/media2/widget/g;)V
    .locals 0

    .line 73
    iput-object p1, p0, Landroidx/media2/widget/g$1;->a:Landroidx/media2/widget/g;

    invoke-direct {p0}, Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFontScaleChanged(F)V
    .locals 1

    .line 82
    iget-object v0, p0, Landroidx/media2/widget/g$1;->a:Landroidx/media2/widget/g;

    iget-object v0, v0, Landroidx/media2/widget/g;->e:Landroidx/media2/widget/g$a;

    invoke-interface {v0, p1}, Landroidx/media2/widget/g$a;->a(F)V

    return-void
.end method

.method public final onUserStyleChanged(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)V
    .locals 2

    .line 76
    iget-object v0, p0, Landroidx/media2/widget/g$1;->a:Landroidx/media2/widget/g;

    new-instance v1, Landroidx/media2/widget/b;

    invoke-direct {v1, p1}, Landroidx/media2/widget/b;-><init>(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)V

    iput-object v1, v0, Landroidx/media2/widget/g;->c:Landroidx/media2/widget/b;

    .line 77
    iget-object p1, p0, Landroidx/media2/widget/g$1;->a:Landroidx/media2/widget/g;

    iget-object p1, p1, Landroidx/media2/widget/g;->e:Landroidx/media2/widget/g$a;

    iget-object v0, p0, Landroidx/media2/widget/g$1;->a:Landroidx/media2/widget/g;

    iget-object v0, v0, Landroidx/media2/widget/g;->c:Landroidx/media2/widget/b;

    invoke-interface {p1, v0}, Landroidx/media2/widget/g$a;->a(Landroidx/media2/widget/b;)V

    return-void
.end method
