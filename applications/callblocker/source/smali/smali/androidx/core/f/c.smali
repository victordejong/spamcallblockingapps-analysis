.class public Landroidx/core/f/c;
.super Ljava/lang/Object;
.source "PrecomputedTextCompat.java"

# interfaces
.implements Landroid/text/Spannable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/f/c$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/Object;

.field private static b:Ljava/util/concurrent/Executor;


# instance fields
.field private final c:Landroid/text/Spannable;

.field private final d:Landroidx/core/f/c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/core/f/c;->a:Ljava/lang/Object;

    .line 73
    const/4 v0, 0x0

    sput-object v0, Landroidx/core/f/c;->b:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public a()Landroidx/core/f/c$a;
    .locals 1

    .prologue
    .line 512
    iget-object v0, p0, Landroidx/core/f/c;->d:Landroidx/core/f/c$a;

    return-object v0
.end method

.method public charAt(I)C
    .locals 1

    .prologue
    .line 712
    iget-object v0, p0, Landroidx/core/f/c;->c:Landroid/text/Spannable;

    invoke-interface {v0, p1}, Landroid/text/Spannable;->charAt(I)C

    move-result v0

    return v0
.end method

.method public getSpanEnd(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 687
    iget-object v0, p0, Landroidx/core/f/c;->c:Landroid/text/Spannable;

    invoke-interface {v0, p1}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getSpanFlags(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 692
    iget-object v0, p0, Landroidx/core/f/c;->c:Landroid/text/Spannable;

    invoke-interface {v0, p1}, Landroid/text/Spannable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getSpanStart(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 682
    iget-object v0, p0, Landroidx/core/f/c;->c:Landroid/text/Spannable;

    invoke-interface {v0, p1}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getSpans(IILjava/lang/Class;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II",
            "Ljava/lang/Class",
            "<TT;>;)[TT;"
        }
    .end annotation

    .prologue
    .line 677
    iget-object v0, p0, Landroidx/core/f/c;->c:Landroid/text/Spannable;

    invoke-interface {v0, p1, p2, p3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public length()I
    .locals 1

    .prologue
    .line 707
    iget-object v0, p0, Landroidx/core/f/c;->c:Landroid/text/Spannable;

    invoke-interface {v0}, Landroid/text/Spannable;->length()I

    move-result v0

    return v0
.end method

.method public nextSpanTransition(IILjava/lang/Class;)I
    .locals 1

    .prologue
    .line 697
    iget-object v0, p0, Landroidx/core/f/c;->c:Landroid/text/Spannable;

    invoke-interface {v0, p1, p2, p3}, Landroid/text/Spannable;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v0

    return v0
.end method

.method public removeSpan(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 663
    instance-of v0, p1, Landroid/text/style/MetricAffectingSpan;

    if-eqz v0, :cond_0

    .line 664
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "MetricAffectingSpan can not be removed from PrecomputedText."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 667
    :cond_0
    iget-object v0, p0, Landroidx/core/f/c;->c:Landroid/text/Spannable;

    invoke-interface {v0, p1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 668
    return-void
.end method

.method public setSpan(Ljava/lang/Object;III)V
    .locals 2

    .prologue
    .line 651
    instance-of v0, p1, Landroid/text/style/MetricAffectingSpan;

    if-eqz v0, :cond_0

    .line 652
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "MetricAffectingSpan can not be set to PrecomputedText."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 655
    :cond_0
    iget-object v0, p0, Landroidx/core/f/c;->c:Landroid/text/Spannable;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 656
    return-void
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 717
    iget-object v0, p0, Landroidx/core/f/c;->c:Landroid/text/Spannable;

    invoke-interface {v0, p1, p2}, Landroid/text/Spannable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 722
    iget-object v0, p0, Landroidx/core/f/c;->c:Landroid/text/Spannable;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
