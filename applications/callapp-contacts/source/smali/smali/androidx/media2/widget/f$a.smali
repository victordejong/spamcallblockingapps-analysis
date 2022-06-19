.class final Landroidx/media2/widget/f$a;
.super Landroidx/media2/widget/g;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/widget/e$h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/widget/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/widget/f$a$c;,
        Landroidx/media2/widget/f$a$d;,
        Landroidx/media2/widget/f$a$a;,
        Landroidx/media2/widget/f$a$b;,
        Landroidx/media2/widget/f$a$e;
    }
.end annotation


# instance fields
.field final synthetic a:Landroidx/media2/widget/f;

.field private final b:Landroidx/media2/widget/f$a$a;


# direct methods
.method constructor <init>(Landroidx/media2/widget/f;Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 119
    invoke-direct {p0, p1, p2, v0}, Landroidx/media2/widget/f$a;-><init>(Landroidx/media2/widget/f;Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method constructor <init>(Landroidx/media2/widget/f;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 123
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/media2/widget/f$a;-><init>(Landroidx/media2/widget/f;Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method constructor <init>(Landroidx/media2/widget/f;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 126
    iput-object p1, p0, Landroidx/media2/widget/f$a;->a:Landroidx/media2/widget/f;

    .line 127
    invoke-direct {p0, p2, p3, p4}, Landroidx/media2/widget/g;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 129
    new-instance p1, Landroidx/media2/widget/f$a$a;

    iget-object p2, p0, Landroidx/media2/widget/f$a;->e:Landroidx/media2/widget/g$a;

    check-cast p2, Landroidx/media2/widget/f$a$b;

    invoke-direct {p1, p0, p2}, Landroidx/media2/widget/f$a$a;-><init>(Landroidx/media2/widget/f$a;Landroidx/media2/widget/f$a$b;)V

    iput-object p1, p0, Landroidx/media2/widget/f$a;->b:Landroidx/media2/widget/f$a$a;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Landroidx/media2/widget/g$a;
    .locals 1

    .line 134
    new-instance v0, Landroidx/media2/widget/f$a$b;

    invoke-direct {v0, p0, p1}, Landroidx/media2/widget/f$a$b;-><init>(Landroidx/media2/widget/f$a;Landroid/content/Context;)V

    return-object v0
.end method

.method public final a(Landroidx/media2/widget/e$b;)V
    .locals 1

    .line 139
    iget-object v0, p0, Landroidx/media2/widget/f$a;->b:Landroidx/media2/widget/f$a$a;

    invoke-virtual {v0, p1}, Landroidx/media2/widget/f$a$a;->a(Landroidx/media2/widget/e$b;)V

    .line 141
    invoke-virtual {p0}, Landroidx/media2/widget/f$a;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroidx/media2/widget/f$a;->getHeight()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroidx/media2/widget/f$a;->a(II)V

    .line 143
    iget-object p1, p0, Landroidx/media2/widget/f$a;->d:Landroidx/media2/widget/p$c$a;

    if-eqz p1, :cond_0

    .line 144
    iget-object p1, p0, Landroidx/media2/widget/f$a;->d:Landroidx/media2/widget/p$c$a;

    invoke-interface {p1}, Landroidx/media2/widget/p$c$a;->a()V

    :cond_0
    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 150
    invoke-super {p0, p1}, Landroidx/media2/widget/g;->onDraw(Landroid/graphics/Canvas;)V

    .line 151
    iget-object v0, p0, Landroidx/media2/widget/f$a;->e:Landroidx/media2/widget/g$a;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method
