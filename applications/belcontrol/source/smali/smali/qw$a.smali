.class public Lqw$a;
.super Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lqw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lqw;


# direct methods
.method public constructor <init>(Lqw;)V
    .locals 0

    iput-object p1, p0, Lqw$a;->a:Lqw;

    invoke-direct {p0}, Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFontScaleChanged(F)V
    .locals 1

    iget-object v0, p0, Lqw$a;->a:Lqw;

    iget-object v0, v0, Lqw;->d:Lqw$b;

    invoke-interface {v0, p1}, Lqw$b;->a(F)V

    return-void
.end method

.method public onUserStyleChanged(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)V
    .locals 1

    iget-object v0, p0, Lqw$a;->a:Lqw;

    iput-object p1, v0, Lqw;->b:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    iget-object v0, v0, Lqw;->d:Lqw$b;

    invoke-interface {v0, p1}, Lqw$b;->b(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)V

    return-void
.end method
