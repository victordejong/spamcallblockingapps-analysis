.class final Landroidx/media2/widget/d$a;
.super Landroidx/media2/widget/g;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/widget/c$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/widget/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/widget/d$a$a;,
        Landroidx/media2/widget/d$a$b;
    }
.end annotation


# instance fields
.field final a:Landroid/graphics/Rect;

.field final synthetic b:Landroidx/media2/widget/d;


# direct methods
.method constructor <init>(Landroidx/media2/widget/d;Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 109
    invoke-direct {p0, p1, p2, v0}, Landroidx/media2/widget/d$a;-><init>(Landroidx/media2/widget/d;Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method constructor <init>(Landroidx/media2/widget/d;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 113
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/media2/widget/d$a;-><init>(Landroidx/media2/widget/d;Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method constructor <init>(Landroidx/media2/widget/d;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 116
    iput-object p1, p0, Landroidx/media2/widget/d$a;->b:Landroidx/media2/widget/d;

    .line 117
    invoke-direct {p0, p2, p3, p4}, Landroidx/media2/widget/g;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 106
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroidx/media2/widget/d$a;->a:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final a()Landroidx/media2/widget/b;
    .locals 1

    .line 136
    iget-object v0, p0, Landroidx/media2/widget/d$a;->c:Landroidx/media2/widget/b;

    return-object v0
.end method

.method public final a(Landroid/content/Context;)Landroidx/media2/widget/g$a;
    .locals 1

    .line 122
    new-instance v0, Landroidx/media2/widget/d$a$a;

    invoke-direct {v0, p0, p1}, Landroidx/media2/widget/d$a$a;-><init>(Landroidx/media2/widget/d$a;Landroid/content/Context;)V

    return-object v0
.end method

.method public final a([Landroid/text/SpannableStringBuilder;)V
    .locals 6

    .line 127
    iget-object v0, p0, Landroidx/media2/widget/d$a;->e:Landroidx/media2/widget/g$a;

    check-cast v0, Landroidx/media2/widget/d$a$a;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0xf

    if-ge v2, v3, :cond_1

    .line 1330
    aget-object v3, p1, v2

    if-eqz v3, :cond_0

    .line 1331
    iget-object v3, v0, Landroidx/media2/widget/d$a$a;->a:[Landroidx/media2/widget/d$a$b;

    aget-object v3, v3, v2

    aget-object v4, p1, v2

    sget-object v5, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v3, v4, v5}, Landroidx/media2/widget/d$a$b;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 1332
    iget-object v3, v0, Landroidx/media2/widget/d$a$a;->a:[Landroidx/media2/widget/d$a$b;

    aget-object v3, v3, v2

    invoke-virtual {v3, v1}, Landroidx/media2/widget/d$a$b;->setVisibility(I)V

    goto :goto_1

    .line 1334
    :cond_0
    iget-object v3, v0, Landroidx/media2/widget/d$a$a;->a:[Landroidx/media2/widget/d$a$b;

    aget-object v3, v3, v2

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroidx/media2/widget/d$a$b;->setVisibility(I)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 129
    :cond_1
    iget-object p1, p0, Landroidx/media2/widget/d$a;->d:Landroidx/media2/widget/p$c$a;

    if-eqz p1, :cond_2

    .line 130
    iget-object p1, p0, Landroidx/media2/widget/d$a;->d:Landroidx/media2/widget/p$c$a;

    invoke-interface {p1}, Landroidx/media2/widget/p$c$a;->a()V

    :cond_2
    return-void
.end method
