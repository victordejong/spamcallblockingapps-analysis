.class final Lcom/google/android/material/internal/q$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ld/h/m/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/internal/q;->b(Landroid/view/View;Lcom/google/android/material/internal/q$d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/internal/q$d;

.field final synthetic b:Lcom/google/android/material/internal/q$e;


# direct methods
.method constructor <init>(Lcom/google/android/material/internal/q$d;Lcom/google/android/material/internal/q$e;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/internal/q$b;->a:Lcom/google/android/material/internal/q$d;

    iput-object p2, p0, Lcom/google/android/material/internal/q$b;->b:Lcom/google/android/material/internal/q$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Ld/h/m/b0;)Ld/h/m/b0;
    .locals 3

    iget-object v0, p0, Lcom/google/android/material/internal/q$b;->a:Lcom/google/android/material/internal/q$d;

    new-instance v1, Lcom/google/android/material/internal/q$e;

    iget-object v2, p0, Lcom/google/android/material/internal/q$b;->b:Lcom/google/android/material/internal/q$e;

    invoke-direct {v1, v2}, Lcom/google/android/material/internal/q$e;-><init>(Lcom/google/android/material/internal/q$e;)V

    invoke-interface {v0, p1, p2, v1}, Lcom/google/android/material/internal/q$d;->a(Landroid/view/View;Ld/h/m/b0;Lcom/google/android/material/internal/q$e;)Ld/h/m/b0;

    move-result-object p1

    return-object p1
.end method
