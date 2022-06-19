.class public final Landroidx/core/d/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/Spannable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/d/c$a;
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/Object;

.field private static c:Ljava/util/concurrent/Executor;


# instance fields
.field public final a:Landroidx/core/d/c$a;

.field private final d:Landroid/text/Spannable;

.field private final e:[I

.field private final f:Landroid/text/PrecomputedText;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 73
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/core/d/c;->b:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/text/PrecomputedText;Landroidx/core/d/c$a;)V
    .locals 2

    .line 498
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 499
    iput-object p1, p0, Landroidx/core/d/c;->d:Landroid/text/Spannable;

    .line 500
    iput-object p2, p0, Landroidx/core/d/c;->a:Landroidx/core/d/c$a;

    const/4 p2, 0x0

    .line 501
    iput-object p2, p0, Landroidx/core/d/c;->e:[I

    .line 502
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    iput-object p1, p0, Landroidx/core/d/c;->f:Landroid/text/PrecomputedText;

    return-void
.end method

.method private constructor <init>(Ljava/lang/CharSequence;Landroidx/core/d/c$a;[I)V
    .locals 1

    .line 490
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 491
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Landroidx/core/d/c;->d:Landroid/text/Spannable;

    .line 492
    iput-object p2, p0, Landroidx/core/d/c;->a:Landroidx/core/d/c$a;

    .line 493
    iput-object p3, p0, Landroidx/core/d/c;->e:[I

    const/4 p1, 0x0

    .line 494
    iput-object p1, p0, Landroidx/core/d/c;->f:Landroid/text/PrecomputedText;

    return-void
.end method


# virtual methods
.method public final a()Landroid/text/PrecomputedText;
    .locals 2

    .line 512
    iget-object v0, p0, Landroidx/core/d/c;->d:Landroid/text/Spannable;

    instance-of v1, v0, Landroid/text/PrecomputedText;

    if-eqz v1, :cond_0

    .line 513
    check-cast v0, Landroid/text/PrecomputedText;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final charAt(I)C
    .locals 1

    .line 754
    iget-object v0, p0, Landroidx/core/d/c;->d:Landroid/text/Spannable;

    invoke-interface {v0, p1}, Landroid/text/Spannable;->charAt(I)C

    move-result p1

    return p1
.end method

.method public final getSpanEnd(Ljava/lang/Object;)I
    .locals 1

    .line 729
    iget-object v0, p0, Landroidx/core/d/c;->d:Landroid/text/Spannable;

    invoke-interface {v0, p1}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final getSpanFlags(Ljava/lang/Object;)I
    .locals 1

    .line 734
    iget-object v0, p0, Landroidx/core/d/c;->d:Landroid/text/Spannable;

    invoke-interface {v0, p1}, Landroid/text/Spannable;->getSpanFlags(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final getSpanStart(Ljava/lang/Object;)I
    .locals 1

    .line 724
    iget-object v0, p0, Landroidx/core/d/c;->d:Landroid/text/Spannable;

    invoke-interface {v0, p1}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final getSpans(IILjava/lang/Class;)[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II",
            "Ljava/lang/Class<",
            "TT;>;)[TT;"
        }
    .end annotation

    .line 714
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 715
    iget-object v0, p0, Landroidx/core/d/c;->f:Landroid/text/PrecomputedText;

    invoke-virtual {v0, p1, p2, p3}, Landroid/text/PrecomputedText;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 717
    :cond_0
    iget-object v0, p0, Landroidx/core/d/c;->d:Landroid/text/Spannable;

    invoke-interface {v0, p1, p2, p3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final length()I
    .locals 1

    .line 749
    iget-object v0, p0, Landroidx/core/d/c;->d:Landroid/text/Spannable;

    invoke-interface {v0}, Landroid/text/Spannable;->length()I

    move-result v0

    return v0
.end method

.method public final nextSpanTransition(IILjava/lang/Class;)I
    .locals 1

    .line 739
    iget-object v0, p0, Landroidx/core/d/c;->d:Landroid/text/Spannable;

    invoke-interface {v0, p1, p2, p3}, Landroid/text/Spannable;->nextSpanTransition(IILjava/lang/Class;)I

    move-result p1

    return p1
.end method

.method public final removeSpan(Ljava/lang/Object;)V
    .locals 2

    .line 695
    instance-of v0, p1, Landroid/text/style/MetricAffectingSpan;

    if-nez v0, :cond_1

    .line 699
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 700
    iget-object v0, p0, Landroidx/core/d/c;->f:Landroid/text/PrecomputedText;

    invoke-virtual {v0, p1}, Landroid/text/PrecomputedText;->removeSpan(Ljava/lang/Object;)V

    return-void

    .line 702
    :cond_0
    iget-object v0, p0, Landroidx/core/d/c;->d:Landroid/text/Spannable;

    invoke-interface {v0, p1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    return-void

    .line 696
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "MetricAffectingSpan can not be removed from PrecomputedText."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setSpan(Ljava/lang/Object;III)V
    .locals 2

    .line 678
    instance-of v0, p1, Landroid/text/style/MetricAffectingSpan;

    if-nez v0, :cond_1

    .line 682
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 683
    iget-object v0, p0, Landroidx/core/d/c;->f:Landroid/text/PrecomputedText;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/text/PrecomputedText;->setSpan(Ljava/lang/Object;III)V

    return-void

    .line 685
    :cond_0
    iget-object v0, p0, Landroidx/core/d/c;->d:Landroid/text/Spannable;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    return-void

    .line 679
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "MetricAffectingSpan can not be set to PrecomputedText."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final subSequence(II)Ljava/lang/CharSequence;
    .locals 1

    .line 759
    iget-object v0, p0, Landroidx/core/d/c;->d:Landroid/text/Spannable;

    invoke-interface {v0, p1, p2}, Landroid/text/Spannable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 765
    iget-object v0, p0, Landroidx/core/d/c;->d:Landroid/text/Spannable;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
