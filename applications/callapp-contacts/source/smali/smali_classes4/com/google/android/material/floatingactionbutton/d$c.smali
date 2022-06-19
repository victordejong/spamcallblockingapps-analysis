.class final Lcom/google/android/material/floatingactionbutton/d$c;
.super Lcom/google/android/material/floatingactionbutton/d$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/floatingactionbutton/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/floatingactionbutton/d;


# direct methods
.method constructor <init>(Lcom/google/android/material/floatingactionbutton/d;)V
    .locals 1

    .line 828
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/d$c;->a:Lcom/google/android/material/floatingactionbutton/d;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/floatingactionbutton/d$g;-><init>(Lcom/google/android/material/floatingactionbutton/d;Lcom/google/android/material/floatingactionbutton/d$1;)V

    return-void
.end method


# virtual methods
.method protected final a()F
    .locals 2

    .line 832
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/d$c;->a:Lcom/google/android/material/floatingactionbutton/d;

    iget v0, v0, Lcom/google/android/material/floatingactionbutton/d;->i:F

    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/d$c;->a:Lcom/google/android/material/floatingactionbutton/d;

    iget v1, v1, Lcom/google/android/material/floatingactionbutton/d;->k:F

    add-float/2addr v0, v1

    return v0
.end method
