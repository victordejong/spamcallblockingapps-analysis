.class public Lnw$a;
.super Lqw;
.source ""

# interfaces
.implements Lmw$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnw$a$a;,
        Lnw$a$b;
    }
.end annotation


# instance fields
.field public final h:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Lnw;Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lnw$a;-><init>(Lnw;Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Lnw;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lnw$a;-><init>(Lnw;Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Lnw;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p2, p3, p4}, Lqw;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lnw$a;->h:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public d()Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    .locals 1

    iget-object v0, p0, Lqw;->b:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    return-object v0
.end method

.method public e([Landroid/text/SpannableStringBuilder;)V
    .locals 1

    iget-object v0, p0, Lqw;->d:Lqw$b;

    check-cast v0, Lnw$a$a;

    invoke-virtual {v0, p1}, Lnw$a$a;->c([Landroid/text/SpannableStringBuilder;)V

    iget-object p1, p0, Lqw;->c:Lfx$c$a;

    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, Lfx$c$a;->a(Lfx$c;)V

    :cond_0
    return-void
.end method

.method public f(Landroid/content/Context;)Lqw$b;
    .locals 1

    new-instance v0, Lnw$a$a;

    invoke-direct {v0, p0, p1}, Lnw$a$a;-><init>(Lnw$a;Landroid/content/Context;)V

    return-object v0
.end method
