.class public Lcom/google/android/material/internal/g;
.super Ljava/lang/Object;
.source "TextDrawableHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/internal/g$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/text/TextPaint;

.field private final b:Lcom/google/android/material/n/f;

.field private c:F

.field private d:Z

.field private e:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/android/material/internal/g$a;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/google/android/material/n/d;


# direct methods
.method public constructor <init>(Lcom/google/android/material/internal/g$a;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/material/internal/g;->a:Landroid/text/TextPaint;

    .line 43
    new-instance v0, Lcom/google/android/material/internal/g$1;

    invoke-direct {v0, p0}, Lcom/google/android/material/internal/g$1;-><init>(Lcom/google/android/material/internal/g;)V

    iput-object v0, p0, Lcom/google/android/material/internal/g;->b:Lcom/google/android/material/n/f;

    .line 69
    iput-boolean v1, p0, Lcom/google/android/material/internal/g;->d:Z

    .line 70
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/material/internal/g;->e:Ljava/lang/ref/WeakReference;

    .line 77
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/g;->a(Lcom/google/android/material/internal/g$a;)V

    .line 78
    return-void
.end method

.method private a(Ljava/lang/CharSequence;)F
    .locals 3

    .prologue
    .line 110
    if-nez p1, :cond_0

    .line 111
    const/4 v0, 0x0

    .line 113
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/internal/g;->a:Landroid/text/TextPaint;

    const/4 v1, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/android/material/internal/g;)Ljava/lang/ref/WeakReference;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/material/internal/g;->e:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/material/internal/g;Z)Z
    .locals 0

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/google/android/material/internal/g;->d:Z

    return p1
.end method


# virtual methods
.method public a(Ljava/lang/String;)F
    .locals 1

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/google/android/material/internal/g;->d:Z

    if-nez v0, :cond_0

    .line 101
    iget v0, p0, Lcom/google/android/material/internal/g;->c:F

    .line 106
    :goto_0
    return v0

    .line 104
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/material/internal/g;->a(Ljava/lang/CharSequence;)F

    move-result v0

    iput v0, p0, Lcom/google/android/material/internal/g;->c:F

    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/material/internal/g;->d:Z

    .line 106
    iget v0, p0, Lcom/google/android/material/internal/g;->c:F

    goto :goto_0
.end method

.method public a()Landroid/text/TextPaint;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/android/material/internal/g;->a:Landroid/text/TextPaint;

    return-object v0
.end method

.method public a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 156
    iget-object v0, p0, Lcom/google/android/material/internal/g;->f:Lcom/google/android/material/n/d;

    iget-object v1, p0, Lcom/google/android/material/internal/g;->a:Landroid/text/TextPaint;

    iget-object v2, p0, Lcom/google/android/material/internal/g;->b:Lcom/google/android/material/n/f;

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/material/n/d;->b(Landroid/content/Context;Landroid/text/TextPaint;Lcom/google/android/material/n/f;)V

    .line 157
    return-void
.end method

.method public a(Lcom/google/android/material/internal/g$a;)V
    .locals 1

    .prologue
    .line 82
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/material/internal/g;->e:Ljava/lang/ref/WeakReference;

    .line 83
    return-void
.end method

.method public a(Lcom/google/android/material/n/d;Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/google/android/material/internal/g;->f:Lcom/google/android/material/n/d;

    if-eq v0, p1, :cond_2

    .line 135
    iput-object p1, p0, Lcom/google/android/material/internal/g;->f:Lcom/google/android/material/n/d;

    .line 136
    if-eqz p1, :cond_1

    .line 137
    iget-object v0, p0, Lcom/google/android/material/internal/g;->a:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/google/android/material/internal/g;->b:Lcom/google/android/material/n/f;

    invoke-virtual {p1, p2, v0, v1}, Lcom/google/android/material/n/d;->c(Landroid/content/Context;Landroid/text/TextPaint;Lcom/google/android/material/n/f;)V

    .line 139
    iget-object v0, p0, Lcom/google/android/material/internal/g;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/internal/g$a;

    .line 140
    if-eqz v0, :cond_0

    .line 141
    iget-object v1, p0, Lcom/google/android/material/internal/g;->a:Landroid/text/TextPaint;

    invoke-interface {v0}, Lcom/google/android/material/internal/g$a;->getState()[I

    move-result-object v0

    iput-object v0, v1, Landroid/text/TextPaint;->drawableState:[I

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/internal/g;->a:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/google/android/material/internal/g;->b:Lcom/google/android/material/n/f;

    invoke-virtual {p1, p2, v0, v1}, Lcom/google/android/material/n/d;->b(Landroid/content/Context;Landroid/text/TextPaint;Lcom/google/android/material/n/f;)V

    .line 144
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/internal/g;->d:Z

    .line 147
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/internal/g;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/internal/g$a;

    .line 148
    if-eqz v0, :cond_2

    .line 149
    invoke-interface {v0}, Lcom/google/android/material/internal/g$a;->e()V

    .line 150
    invoke-interface {v0}, Lcom/google/android/material/internal/g$a;->getState()[I

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/material/internal/g$a;->onStateChange([I)Z

    .line 153
    :cond_2
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 91
    iput-boolean p1, p0, Lcom/google/android/material/internal/g;->d:Z

    .line 92
    return-void
.end method

.method public b()Lcom/google/android/material/n/d;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/google/android/material/internal/g;->f:Lcom/google/android/material/n/d;

    return-object v0
.end method
