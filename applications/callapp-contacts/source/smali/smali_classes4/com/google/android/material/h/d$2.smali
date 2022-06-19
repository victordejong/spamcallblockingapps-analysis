.class final Lcom/google/android/material/h/d$2;
.super Lcom/google/android/material/h/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/h/d;->c(Landroid/content/Context;Landroid/text/TextPaint;Lcom/google/android/material/h/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/text/TextPaint;

.field final synthetic b:Lcom/google/android/material/h/f;

.field final synthetic c:Lcom/google/android/material/h/d;


# direct methods
.method constructor <init>(Lcom/google/android/material/h/d;Landroid/text/TextPaint;Lcom/google/android/material/h/f;)V
    .locals 0

    .line 238
    iput-object p1, p0, Lcom/google/android/material/h/d$2;->c:Lcom/google/android/material/h/d;

    iput-object p2, p0, Lcom/google/android/material/h/d$2;->a:Landroid/text/TextPaint;

    iput-object p3, p0, Lcom/google/android/material/h/d$2;->b:Lcom/google/android/material/h/f;

    invoke-direct {p0}, Lcom/google/android/material/h/f;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/google/android/material/h/d$2;->b:Lcom/google/android/material/h/f;

    invoke-virtual {v0, p1}, Lcom/google/android/material/h/f;->a(I)V

    return-void
.end method

.method public final a(Landroid/graphics/Typeface;Z)V
    .locals 2

    .line 242
    iget-object v0, p0, Lcom/google/android/material/h/d$2;->c:Lcom/google/android/material/h/d;

    iget-object v1, p0, Lcom/google/android/material/h/d$2;->a:Landroid/text/TextPaint;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/material/h/d;->a(Landroid/text/TextPaint;Landroid/graphics/Typeface;)V

    .line 243
    iget-object v0, p0, Lcom/google/android/material/h/d$2;->b:Lcom/google/android/material/h/f;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/material/h/f;->a(Landroid/graphics/Typeface;Z)V

    return-void
.end method
