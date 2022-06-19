.class public Lcom/google/android/material/f/d$d;
.super Ljava/lang/Object;
.source "CircularRevealWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/f/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public a:F

.field public b:F

.field public c:F


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 0

    .prologue
    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    iput p1, p0, Lcom/google/android/material/f/d$d;->a:F

    .line 148
    iput p2, p0, Lcom/google/android/material/f/d$d;->b:F

    .line 149
    iput p3, p0, Lcom/google/android/material/f/d$d;->c:F

    .line 150
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/material/f/d$1;)V
    .locals 0

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/google/android/material/f/d$d;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/f/d$d;)V
    .locals 3

    .prologue
    .line 153
    iget v0, p1, Lcom/google/android/material/f/d$d;->a:F

    iget v1, p1, Lcom/google/android/material/f/d$d;->b:F

    iget v2, p1, Lcom/google/android/material/f/d$d;->c:F

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/material/f/d$d;-><init>(FFF)V

    .line 154
    return-void
.end method


# virtual methods
.method public a(FFF)V
    .locals 0

    .prologue
    .line 157
    iput p1, p0, Lcom/google/android/material/f/d$d;->a:F

    .line 158
    iput p2, p0, Lcom/google/android/material/f/d$d;->b:F

    .line 159
    iput p3, p0, Lcom/google/android/material/f/d$d;->c:F

    .line 160
    return-void
.end method

.method public a(Lcom/google/android/material/f/d$d;)V
    .locals 3

    .prologue
    .line 163
    iget v0, p1, Lcom/google/android/material/f/d$d;->a:F

    iget v1, p1, Lcom/google/android/material/f/d$d;->b:F

    iget v2, p1, Lcom/google/android/material/f/d$d;->c:F

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/material/f/d$d;->a(FFF)V

    .line 164
    return-void
.end method

.method public a()Z
    .locals 2

    .prologue
    .line 171
    iget v0, p0, Lcom/google/android/material/f/d$d;->c:F

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
