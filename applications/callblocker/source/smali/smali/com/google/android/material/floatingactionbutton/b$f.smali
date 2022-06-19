.class Lcom/google/android/material/floatingactionbutton/b$f;
.super Lcom/google/android/material/floatingactionbutton/b$g;
.source "FloatingActionButtonImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/floatingactionbutton/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "f"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/floatingactionbutton/b;


# direct methods
.method constructor <init>(Lcom/google/android/material/floatingactionbutton/b;)V
    .locals 1

    .prologue
    .line 810
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/b$f;->a:Lcom/google/android/material/floatingactionbutton/b;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/floatingactionbutton/b$g;-><init>(Lcom/google/android/material/floatingactionbutton/b;Lcom/google/android/material/floatingactionbutton/b$1;)V

    return-void
.end method


# virtual methods
.method protected a()F
    .locals 1

    .prologue
    .line 814
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b$f;->a:Lcom/google/android/material/floatingactionbutton/b;

    iget v0, v0, Lcom/google/android/material/floatingactionbutton/b;->i:F

    return v0
.end method
