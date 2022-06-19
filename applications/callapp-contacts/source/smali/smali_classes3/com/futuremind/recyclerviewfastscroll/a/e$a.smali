.class public abstract Lcom/futuremind/recyclerviewfastscroll/a/e$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/futuremind/recyclerviewfastscroll/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/futuremind/recyclerviewfastscroll/a/e;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected final a:Landroid/view/View;

.field protected b:I

.field protected c:I

.field protected d:I

.field protected e:F

.field protected f:F


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    sget v0, Lcom/hbb20/h$a;->fastscroll__default_show:I

    iput v0, p0, Lcom/futuremind/recyclerviewfastscroll/a/e$a;->b:I

    .line 81
    sget v0, Lcom/hbb20/h$a;->fastscroll__default_hide:I

    iput v0, p0, Lcom/futuremind/recyclerviewfastscroll/a/e$a;->c:I

    const/16 v0, 0x3e8

    .line 82
    iput v0, p0, Lcom/futuremind/recyclerviewfastscroll/a/e$a;->d:I

    const/high16 v0, 0x3f000000    # 0.5f

    .line 83
    iput v0, p0, Lcom/futuremind/recyclerviewfastscroll/a/e$a;->e:F

    .line 84
    iput v0, p0, Lcom/futuremind/recyclerviewfastscroll/a/e$a;->f:F

    .line 87
    iput-object p1, p0, Lcom/futuremind/recyclerviewfastscroll/a/e$a;->a:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final a()Lcom/futuremind/recyclerviewfastscroll/a/e$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/futuremind/recyclerviewfastscroll/a/e$a<",
            "TT;>;"
        }
    .end annotation

    const/high16 v0, 0x3f800000    # 1.0f

    .line 106
    iput v0, p0, Lcom/futuremind/recyclerviewfastscroll/a/e$a;->e:F

    return-object p0
.end method

.method public final b()Lcom/futuremind/recyclerviewfastscroll/a/e$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/futuremind/recyclerviewfastscroll/a/e$a<",
            "TT;>;"
        }
    .end annotation

    const/high16 v0, 0x3f800000    # 1.0f

    .line 111
    iput v0, p0, Lcom/futuremind/recyclerviewfastscroll/a/e$a;->f:F

    return-object p0
.end method

.method public abstract c()Lcom/futuremind/recyclerviewfastscroll/a/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method
