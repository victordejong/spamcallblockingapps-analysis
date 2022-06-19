.class final Lcom/google/android/material/h/d$1;
.super Landroidx/core/content/res/f$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/h/d;->a(Landroid/content/Context;Lcom/google/android/material/h/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/h/f;

.field final synthetic b:Lcom/google/android/material/h/d;


# direct methods
.method constructor <init>(Lcom/google/android/material/h/d;Lcom/google/android/material/h/f;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/google/android/material/h/d$1;->b:Lcom/google/android/material/h/d;

    iput-object p2, p0, Lcom/google/android/material/h/d$1;->a:Lcom/google/android/material/h/f;

    invoke-direct {p0}, Landroidx/core/content/res/f$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    .line 203
    iget-object v0, p0, Lcom/google/android/material/h/d$1;->b:Lcom/google/android/material/h/d;

    const/4 v1, 0x1

    .line 4048
    iput-boolean v1, v0, Lcom/google/android/material/h/d;->o:Z

    .line 204
    iget-object v0, p0, Lcom/google/android/material/h/d$1;->a:Lcom/google/android/material/h/f;

    invoke-virtual {v0, p1}, Lcom/google/android/material/h/f;->a(I)V

    return-void
.end method

.method public final a(Landroid/graphics/Typeface;)V
    .locals 2

    .line 196
    iget-object v0, p0, Lcom/google/android/material/h/d$1;->b:Lcom/google/android/material/h/d;

    iget v1, v0, Lcom/google/android/material/h/d;->f:I

    invoke-static {p1, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    .line 1048
    iput-object p1, v0, Lcom/google/android/material/h/d;->p:Landroid/graphics/Typeface;

    .line 197
    iget-object p1, p0, Lcom/google/android/material/h/d$1;->b:Lcom/google/android/material/h/d;

    const/4 v0, 0x1

    .line 2048
    iput-boolean v0, p1, Lcom/google/android/material/h/d;->o:Z

    .line 198
    iget-object p1, p0, Lcom/google/android/material/h/d$1;->a:Lcom/google/android/material/h/f;

    iget-object v0, p0, Lcom/google/android/material/h/d$1;->b:Lcom/google/android/material/h/d;

    .line 3048
    iget-object v0, v0, Lcom/google/android/material/h/d;->p:Landroid/graphics/Typeface;

    const/4 v1, 0x0

    .line 198
    invoke-virtual {p1, v0, v1}, Lcom/google/android/material/h/f;->a(Landroid/graphics/Typeface;Z)V

    return-void
.end method
