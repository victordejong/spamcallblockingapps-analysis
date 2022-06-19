.class final Lorg/mistergroup/shouldianswer/ui/main/b/a$b;
.super Ljava/lang/Object;
.source "FavoriteViewItemHolder.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/ui/main/b/a;->a(Lorg/mistergroup/shouldianswer/components/a/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/mistergroup/shouldianswer/ui/main/b/a;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/ui/main/b/a;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/b/a$b;->a:Lorg/mistergroup/shouldianswer/ui/main/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 59
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/b/a$b;->a:Lorg/mistergroup/shouldianswer/ui/main/b/a;

    invoke-static {p1}, Lorg/mistergroup/shouldianswer/ui/main/b/a;->b(Lorg/mistergroup/shouldianswer/ui/main/b/a;)Lorg/mistergroup/shouldianswer/a/w;

    move-result-object p1

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/w;->c:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/widget/ImageButton;->showContextMenu()Z

    return-void
.end method
