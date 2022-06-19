.class public final Lcom/futuremind/recyclerviewfastscroll/a/e$b;
.super Lcom/futuremind/recyclerviewfastscroll/a/e$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/futuremind/recyclerviewfastscroll/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/futuremind/recyclerviewfastscroll/a/e$a<",
        "Lcom/futuremind/recyclerviewfastscroll/a/e;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 121
    invoke-direct {p0, p1}, Lcom/futuremind/recyclerviewfastscroll/a/e$a;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final c()Lcom/futuremind/recyclerviewfastscroll/a/e;
    .locals 8

    .line 125
    new-instance v7, Lcom/futuremind/recyclerviewfastscroll/a/e;

    iget-object v1, p0, Lcom/futuremind/recyclerviewfastscroll/a/e$b;->a:Landroid/view/View;

    iget v2, p0, Lcom/futuremind/recyclerviewfastscroll/a/e$b;->b:I

    iget v3, p0, Lcom/futuremind/recyclerviewfastscroll/a/e$b;->c:I

    iget v4, p0, Lcom/futuremind/recyclerviewfastscroll/a/e$b;->e:F

    iget v5, p0, Lcom/futuremind/recyclerviewfastscroll/a/e$b;->f:F

    iget v6, p0, Lcom/futuremind/recyclerviewfastscroll/a/e$b;->d:I

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/futuremind/recyclerviewfastscroll/a/e;-><init>(Landroid/view/View;IIFFI)V

    return-object v7
.end method
