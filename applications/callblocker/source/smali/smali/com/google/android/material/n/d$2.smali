.class Lcom/google/android/material/n/d$2;
.super Lcom/google/android/material/n/f;
.source "TextAppearance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/n/d;->a(Landroid/content/Context;Landroid/text/TextPaint;Lcom/google/android/material/n/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/text/TextPaint;

.field final synthetic b:Lcom/google/android/material/n/f;

.field final synthetic c:Lcom/google/android/material/n/d;


# direct methods
.method constructor <init>(Lcom/google/android/material/n/d;Landroid/text/TextPaint;Lcom/google/android/material/n/f;)V
    .locals 0

    .prologue
    .line 222
    iput-object p1, p0, Lcom/google/android/material/n/d$2;->c:Lcom/google/android/material/n/d;

    iput-object p2, p0, Lcom/google/android/material/n/d$2;->a:Landroid/text/TextPaint;

    iput-object p3, p0, Lcom/google/android/material/n/d$2;->b:Lcom/google/android/material/n/f;

    invoke-direct {p0}, Lcom/google/android/material/n/f;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/google/android/material/n/d$2;->b:Lcom/google/android/material/n/f;

    invoke-virtual {v0, p1}, Lcom/google/android/material/n/f;->a(I)V

    .line 233
    return-void
.end method

.method public a(Landroid/graphics/Typeface;Z)V
    .locals 2

    .prologue
    .line 226
    iget-object v0, p0, Lcom/google/android/material/n/d$2;->c:Lcom/google/android/material/n/d;

    iget-object v1, p0, Lcom/google/android/material/n/d$2;->a:Landroid/text/TextPaint;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/material/n/d;->a(Landroid/text/TextPaint;Landroid/graphics/Typeface;)V

    .line 227
    iget-object v0, p0, Lcom/google/android/material/n/d$2;->b:Lcom/google/android/material/n/f;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/material/n/f;->a(Landroid/graphics/Typeface;Z)V

    .line 228
    return-void
.end method
