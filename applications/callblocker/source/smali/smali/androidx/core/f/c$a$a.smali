.class public Landroidx/core/f/c$a$a;
.super Ljava/lang/Object;
.source "PrecomputedTextCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/f/c$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/text/TextPaint;

.field private b:Landroid/text/TextDirectionHeuristic;

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>(Landroid/text/TextPaint;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput-object p1, p0, Landroidx/core/f/c$a$a;->a:Landroid/text/TextPaint;

    .line 117
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 118
    iput v2, p0, Landroidx/core/f/c$a$a;->c:I

    .line 119
    iput v2, p0, Landroidx/core/f/c$a$a;->d:I

    .line 123
    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_1

    .line 124
    sget-object v0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    iput-object v0, p0, Landroidx/core/f/c$a$a;->b:Landroid/text/TextDirectionHeuristic;

    .line 128
    :goto_1
    return-void

    .line 121
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Landroidx/core/f/c$a$a;->d:I

    iput v0, p0, Landroidx/core/f/c$a$a;->c:I

    goto :goto_0

    .line 126
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/core/f/c$a$a;->b:Landroid/text/TextDirectionHeuristic;

    goto :goto_1
.end method


# virtual methods
.method public a(I)Landroidx/core/f/c$a$a;
    .locals 0

    .prologue
    .line 144
    iput p1, p0, Landroidx/core/f/c$a$a;->c:I

    .line 145
    return-object p0
.end method

.method public a(Landroid/text/TextDirectionHeuristic;)Landroidx/core/f/c$a$a;
    .locals 0

    .prologue
    .line 180
    iput-object p1, p0, Landroidx/core/f/c$a$a;->b:Landroid/text/TextDirectionHeuristic;

    .line 181
    return-object p0
.end method

.method public a()Landroidx/core/f/c$a;
    .locals 5

    .prologue
    .line 190
    new-instance v0, Landroidx/core/f/c$a;

    iget-object v1, p0, Landroidx/core/f/c$a$a;->a:Landroid/text/TextPaint;

    iget-object v2, p0, Landroidx/core/f/c$a$a;->b:Landroid/text/TextDirectionHeuristic;

    iget v3, p0, Landroidx/core/f/c$a$a;->c:I

    iget v4, p0, Landroidx/core/f/c$a$a;->d:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/core/f/c$a;-><init>(Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;II)V

    return-object v0
.end method

.method public b(I)Landroidx/core/f/c$a$a;
    .locals 0

    .prologue
    .line 162
    iput p1, p0, Landroidx/core/f/c$a$a;->d:I

    .line 163
    return-object p0
.end method
