.class Lcom/google/android/material/n/d$1;
.super Landroidx/core/a/a/f$a;
.source "TextAppearance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/n/d;->a(Landroid/content/Context;Lcom/google/android/material/n/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/n/f;

.field final synthetic b:Lcom/google/android/material/n/d;


# direct methods
.method constructor <init>(Lcom/google/android/material/n/d;Lcom/google/android/material/n/f;)V
    .locals 0

    .prologue
    .line 177
    iput-object p1, p0, Lcom/google/android/material/n/d$1;->b:Lcom/google/android/material/n/d;

    iput-object p2, p0, Lcom/google/android/material/n/d$1;->a:Lcom/google/android/material/n/f;

    invoke-direct {p0}, Landroidx/core/a/a/f$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .prologue
    .line 187
    iget-object v0, p0, Lcom/google/android/material/n/d$1;->b:Lcom/google/android/material/n/d;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/material/n/d;->a(Lcom/google/android/material/n/d;Z)Z

    .line 188
    iget-object v0, p0, Lcom/google/android/material/n/d$1;->a:Lcom/google/android/material/n/f;

    invoke-virtual {v0, p1}, Lcom/google/android/material/n/f;->a(I)V

    .line 189
    return-void
.end method

.method public a(Landroid/graphics/Typeface;)V
    .locals 3

    .prologue
    .line 180
    iget-object v0, p0, Lcom/google/android/material/n/d$1;->b:Lcom/google/android/material/n/d;

    iget-object v1, p0, Lcom/google/android/material/n/d$1;->b:Lcom/google/android/material/n/d;

    iget v1, v1, Lcom/google/android/material/n/d;->e:I

    invoke-static {p1, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/material/n/d;->a(Lcom/google/android/material/n/d;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 181
    iget-object v0, p0, Lcom/google/android/material/n/d$1;->b:Lcom/google/android/material/n/d;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/material/n/d;->a(Lcom/google/android/material/n/d;Z)Z

    .line 182
    iget-object v0, p0, Lcom/google/android/material/n/d$1;->a:Lcom/google/android/material/n/f;

    iget-object v1, p0, Lcom/google/android/material/n/d$1;->b:Lcom/google/android/material/n/d;

    invoke-static {v1}, Lcom/google/android/material/n/d;->a(Lcom/google/android/material/n/d;)Landroid/graphics/Typeface;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/n/f;->a(Landroid/graphics/Typeface;Z)V

    .line 183
    return-void
.end method
