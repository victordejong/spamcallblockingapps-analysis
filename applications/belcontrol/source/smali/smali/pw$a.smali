.class public Lpw$a;
.super Lqw;
.source ""

# interfaces
.implements Low$i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpw$a$c;,
        Lpw$a$d;,
        Lpw$a$a;,
        Lpw$a$b;,
        Lpw$a$e;
    }
.end annotation


# instance fields
.field public final h:Lpw$a$a;


# direct methods
.method public constructor <init>(Lpw;Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lpw$a;-><init>(Lpw;Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Lpw;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lpw$a;-><init>(Lpw;Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Lpw;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p2, p3, p4}, Lqw;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Lpw$a$a;

    iget-object p2, p0, Lqw;->d:Lqw$b;

    check-cast p2, Lpw$a$b;

    invoke-direct {p1, p0, p2}, Lpw$a$a;-><init>(Lpw$a;Lpw$a$b;)V

    iput-object p1, p0, Lpw$a;->h:Lpw$a$a;

    return-void
.end method


# virtual methods
.method public c(Low$c;)V
    .locals 1

    iget-object v0, p0, Lpw$a;->h:Lpw$a$a;

    invoke-virtual {v0, p1}, Lpw$a$a;->i(Low$c;)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lqw;->b(II)V

    iget-object p1, p0, Lqw;->c:Lfx$c$a;

    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, Lfx$c$a;->a(Lfx$c;)V

    :cond_0
    return-void
.end method

.method public f(Landroid/content/Context;)Lqw$b;
    .locals 1

    new-instance v0, Lpw$a$b;

    invoke-direct {v0, p0, p1}, Lpw$a$b;-><init>(Lpw$a;Landroid/content/Context;)V

    return-object v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lqw;->d:Lqw$b;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method
