.class public Ldc0$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ldc0$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldc0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 1

    instance-of v0, p1, Lcc0;

    if-eqz v0, :cond_0

    check-cast p1, Lcc0;

    invoke-virtual {p1, p2, p3, p4, p5}, Lcc0;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    return-void

    :cond_0
    invoke-virtual {p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public b(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources$Theme;)V
    .locals 1

    instance-of v0, p1, Lcc0;

    if-eqz v0, :cond_0

    check-cast p1, Lcc0;

    invoke-virtual {p1, p2}, Lcc0;->applyTheme(Landroid/content/res/Resources$Theme;)V

    :cond_0
    return-void
.end method

.method public c(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    instance-of v0, p1, Lcc0;

    if-eqz v0, :cond_0

    check-cast p1, Lcc0;

    invoke-virtual {p1}, Lcc0;->canApplyTheme()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
