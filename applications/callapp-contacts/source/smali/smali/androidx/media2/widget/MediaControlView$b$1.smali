.class final Landroidx/media2/widget/MediaControlView$b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/widget/MediaControlView$b;->a(Landroidx/media2/widget/k;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/media2/widget/MediaControlView$b;


# direct methods
.method constructor <init>(Landroidx/media2/widget/MediaControlView$b;)V
    .locals 0

    .line 2093
    iput-object p1, p0, Landroidx/media2/widget/MediaControlView$b$1;->a:Landroidx/media2/widget/MediaControlView$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 2098
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
