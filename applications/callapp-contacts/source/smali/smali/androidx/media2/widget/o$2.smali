.class final Landroidx/media2/widget/o$2;
.super Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/widget/o;-><init>(Landroid/content/Context;Landroidx/media2/widget/h;Landroidx/media2/widget/o$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/media2/widget/o;


# direct methods
.method constructor <init>(Landroidx/media2/widget/o;)V
    .locals 0

    .line 107
    iput-object p1, p0, Landroidx/media2/widget/o$2;->a:Landroidx/media2/widget/o;

    invoke-direct {p0}, Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEnabledChanged(Z)V
    .locals 0

    .line 110
    iget-object p1, p0, Landroidx/media2/widget/o$2;->a:Landroidx/media2/widget/o;

    invoke-virtual {p1}, Landroidx/media2/widget/o;->c()V

    return-void
.end method

.method public final onLocaleChanged(Ljava/util/Locale;)V
    .locals 0

    .line 115
    iget-object p1, p0, Landroidx/media2/widget/o$2;->a:Landroidx/media2/widget/o;

    invoke-virtual {p1}, Landroidx/media2/widget/o;->c()V

    return-void
.end method
