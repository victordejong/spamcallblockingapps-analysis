.class abstract Lcom/google/android/material/progressindicator/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Lcom/google/android/material/progressindicator/b;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field a:Lcom/google/android/material/progressindicator/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field

.field protected b:Lcom/google/android/material/progressindicator/f;


# direct methods
.method public constructor <init>(Lcom/google/android/material/progressindicator/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/google/android/material/progressindicator/g;->a:Lcom/google/android/material/progressindicator/b;

    return-void
.end method


# virtual methods
.method abstract a()I
.end method

.method abstract a(Landroid/graphics/Canvas;F)V
.end method

.method abstract a(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
.end method

.method abstract a(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFI)V
.end method

.method protected final a(Lcom/google/android/material/progressindicator/f;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/google/android/material/progressindicator/g;->b:Lcom/google/android/material/progressindicator/f;

    return-void
.end method

.method abstract b()I
.end method

.method final b(Landroid/graphics/Canvas;F)V
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/google/android/material/progressindicator/g;->a:Lcom/google/android/material/progressindicator/b;

    invoke-virtual {v0}, Lcom/google/android/material/progressindicator/b;->c()V

    .line 91
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/progressindicator/g;->a(Landroid/graphics/Canvas;F)V

    return-void
.end method
