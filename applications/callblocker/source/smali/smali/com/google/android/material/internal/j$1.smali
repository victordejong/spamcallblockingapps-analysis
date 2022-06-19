.class final Lcom/google/android/material/internal/j$1;
.super Ljava/lang/Object;
.source "ViewUtils.java"

# interfaces
.implements Landroidx/core/h/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/internal/j;->a(Landroid/view/View;Lcom/google/android/material/internal/j$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/internal/j$a;

.field final synthetic b:Lcom/google/android/material/internal/j$b;


# direct methods
.method constructor <init>(Lcom/google/android/material/internal/j$a;Lcom/google/android/material/internal/j$b;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/google/android/material/internal/j$1;->a:Lcom/google/android/material/internal/j$a;

    iput-object p2, p0, Lcom/google/android/material/internal/j$1;->b:Lcom/google/android/material/internal/j$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroidx/core/h/ac;)Landroidx/core/h/ac;
    .locals 3

    .prologue
    .line 153
    iget-object v0, p0, Lcom/google/android/material/internal/j$1;->a:Lcom/google/android/material/internal/j$a;

    new-instance v1, Lcom/google/android/material/internal/j$b;

    iget-object v2, p0, Lcom/google/android/material/internal/j$1;->b:Lcom/google/android/material/internal/j$b;

    invoke-direct {v1, v2}, Lcom/google/android/material/internal/j$b;-><init>(Lcom/google/android/material/internal/j$b;)V

    invoke-interface {v0, p1, p2, v1}, Lcom/google/android/material/internal/j$a;->a(Landroid/view/View;Landroidx/core/h/ac;Lcom/google/android/material/internal/j$b;)Landroidx/core/h/ac;

    move-result-object v0

    return-object v0
.end method
