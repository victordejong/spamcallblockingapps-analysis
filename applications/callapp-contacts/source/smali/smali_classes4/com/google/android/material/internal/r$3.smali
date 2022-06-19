.class final Lcom/google/android/material/internal/r$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/view/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/internal/r;->a(Landroid/view/View;Lcom/google/android/material/internal/r$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/internal/r$a;

.field final synthetic b:Lcom/google/android/material/internal/r$b;


# direct methods
.method constructor <init>(Lcom/google/android/material/internal/r$a;Lcom/google/android/material/internal/r$b;)V
    .locals 0

    .line 228
    iput-object p1, p0, Lcom/google/android/material/internal/r$3;->a:Lcom/google/android/material/internal/r$a;

    iput-object p2, p0, Lcom/google/android/material/internal/r$3;->b:Lcom/google/android/material/internal/r$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroidx/core/view/ac;)Landroidx/core/view/ac;
    .locals 3

    .line 231
    iget-object v0, p0, Lcom/google/android/material/internal/r$3;->a:Lcom/google/android/material/internal/r$a;

    new-instance v1, Lcom/google/android/material/internal/r$b;

    iget-object v2, p0, Lcom/google/android/material/internal/r$3;->b:Lcom/google/android/material/internal/r$b;

    invoke-direct {v1, v2}, Lcom/google/android/material/internal/r$b;-><init>(Lcom/google/android/material/internal/r$b;)V

    invoke-interface {v0, p1, p2, v1}, Lcom/google/android/material/internal/r$a;->a(Landroid/view/View;Landroidx/core/view/ac;Lcom/google/android/material/internal/r$b;)Landroidx/core/view/ac;

    move-result-object p1

    return-object p1
.end method
