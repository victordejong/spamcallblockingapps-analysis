.class public final Lcom/google/android/material/n/a;
.super Lcom/google/android/material/n/f;
.source "CancelableFontCallback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/n/a$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/graphics/Typeface;

.field private final b:Lcom/google/android/material/n/a$a;

.field private c:Z


# direct methods
.method public constructor <init>(Lcom/google/android/material/n/a$a;Landroid/graphics/Typeface;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/google/android/material/n/f;-><init>()V

    .line 43
    iput-object p2, p0, Lcom/google/android/material/n/a;->a:Landroid/graphics/Typeface;

    .line 44
    iput-object p1, p0, Lcom/google/android/material/n/a;->b:Lcom/google/android/material/n/a$a;

    .line 45
    return-void
.end method

.method private a(Landroid/graphics/Typeface;)V
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/google/android/material/n/a;->c:Z

    if-nez v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/google/android/material/n/a;->b:Lcom/google/android/material/n/a$a;

    invoke-interface {v0, p1}, Lcom/google/android/material/n/a$a;->a(Landroid/graphics/Typeface;)V

    .line 71
    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/n/a;->c:Z

    .line 65
    return-void
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/material/n/a;->a:Landroid/graphics/Typeface;

    invoke-direct {p0, v0}, Lcom/google/android/material/n/a;->a(Landroid/graphics/Typeface;)V

    .line 55
    return-void
.end method

.method public a(Landroid/graphics/Typeface;Z)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/google/android/material/n/a;->a(Landroid/graphics/Typeface;)V

    .line 50
    return-void
.end method
