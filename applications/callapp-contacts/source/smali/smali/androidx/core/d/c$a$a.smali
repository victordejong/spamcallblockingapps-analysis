.class public final Landroidx/core/d/c$a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/d/c$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Landroid/text/TextPaint;

.field public b:Landroid/text/TextDirectionHeuristic;

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>(Landroid/text/TextPaint;)V
    .locals 1

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-object p1, p0, Landroidx/core/d/c$a$a;->a:Landroid/text/TextPaint;

    .line 118
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p1, v0, :cond_0

    const/4 p1, 0x1

    .line 119
    iput p1, p0, Landroidx/core/d/c$a$a;->c:I

    .line 120
    iput p1, p0, Landroidx/core/d/c$a$a;->d:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 122
    iput p1, p0, Landroidx/core/d/c$a$a;->d:I

    iput p1, p0, Landroidx/core/d/c$a$a;->c:I

    .line 124
    :goto_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x12

    if-lt p1, v0, :cond_1

    .line 125
    sget-object p1, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    iput-object p1, p0, Landroidx/core/d/c$a$a;->b:Landroid/text/TextDirectionHeuristic;

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 127
    iput-object p1, p0, Landroidx/core/d/c$a$a;->b:Landroid/text/TextDirectionHeuristic;

    return-void
.end method
