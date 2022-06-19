.class final Lcom/google/android/material/internal/q$c;
.super Ljava/lang/Object;
.source "ViewUtils.java"

# interfaces
.implements Lb/h/l/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/internal/q;->b(Landroid/view/View;Lcom/google/android/material/internal/q$e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/internal/q$e;

.field final synthetic b:Lcom/google/android/material/internal/q$f;


# direct methods
.method constructor <init>(Lcom/google/android/material/internal/q$e;Lcom/google/android/material/internal/q$f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/internal/q$c;->a:Lcom/google/android/material/internal/q$e;

    iput-object p2, p0, Lcom/google/android/material/internal/q$c;->b:Lcom/google/android/material/internal/q$f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Lb/h/l/e0;)Lb/h/l/e0;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/q$c;->a:Lcom/google/android/material/internal/q$e;

    new-instance v1, Lcom/google/android/material/internal/q$f;

    iget-object v2, p0, Lcom/google/android/material/internal/q$c;->b:Lcom/google/android/material/internal/q$f;

    invoke-direct {v1, v2}, Lcom/google/android/material/internal/q$f;-><init>(Lcom/google/android/material/internal/q$f;)V

    invoke-interface {v0, p1, p2, v1}, Lcom/google/android/material/internal/q$e;->a(Landroid/view/View;Lb/h/l/e0;Lcom/google/android/material/internal/q$f;)Lb/h/l/e0;

    move-result-object p1

    return-object p1
.end method
