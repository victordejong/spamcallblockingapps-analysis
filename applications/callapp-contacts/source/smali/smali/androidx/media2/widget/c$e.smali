.class public Landroidx/media2/widget/c$e;
.super Landroid/text/style/CharacterStyle;
.source "SourceFile"

# interfaces
.implements Landroid/text/style/UpdateAppearance;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/widget/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field a:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 412
    invoke-direct {p0}, Landroid/text/style/CharacterStyle;-><init>()V

    .line 413
    iput p1, p0, Landroidx/media2/widget/c$e;->a:I

    return-void
.end method


# virtual methods
.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    .line 426
    iget v0, p0, Landroidx/media2/widget/c$e;->a:I

    iput v0, p1, Landroid/text/TextPaint;->bgColor:I

    return-void
.end method
