.class abstract Lcom/google/android/material/progressindicator/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/animation/Animator;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected b:Lcom/google/android/material/progressindicator/i;

.field protected final c:[F

.field protected final d:[I


# direct methods
.method protected constructor <init>(I)V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    mul-int/lit8 v0, p1, 0x2

    .line 41
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/android/material/progressindicator/h;->c:[F

    .line 42
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/google/android/material/progressindicator/h;->d:[I

    return-void
.end method


# virtual methods
.method abstract a()V
.end method

.method public abstract a(Landroidx/l/a/a/b$a;)V
.end method

.method protected final a(Lcom/google/android/material/progressindicator/i;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/google/android/material/progressindicator/h;->b:Lcom/google/android/material/progressindicator/i;

    return-void
.end method

.method abstract b()V
.end method

.method abstract c()V
.end method

.method public abstract d()V
.end method

.method public abstract e()V
.end method
