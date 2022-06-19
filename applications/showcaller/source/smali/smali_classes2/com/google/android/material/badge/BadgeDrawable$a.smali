.class Lcom/google/android/material/badge/BadgeDrawable$a;
.super Ljava/lang/Object;
.source "BadgeDrawable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/badge/BadgeDrawable;->A(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Landroid/view/View;

.field final synthetic e:Landroid/widget/FrameLayout;

.field final synthetic f:Lcom/google/android/material/badge/BadgeDrawable;


# direct methods
.method constructor <init>(Lcom/google/android/material/badge/BadgeDrawable;Landroid/view/View;Landroid/widget/FrameLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/badge/BadgeDrawable$a;->f:Lcom/google/android/material/badge/BadgeDrawable;

    iput-object p2, p0, Lcom/google/android/material/badge/BadgeDrawable$a;->d:Landroid/view/View;

    iput-object p3, p0, Lcom/google/android/material/badge/BadgeDrawable$a;->e:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable$a;->f:Lcom/google/android/material/badge/BadgeDrawable;

    iget-object v1, p0, Lcom/google/android/material/badge/BadgeDrawable$a;->d:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/material/badge/BadgeDrawable$a;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/badge/BadgeDrawable;->C(Landroid/view/View;Landroid/widget/FrameLayout;)V

    return-void
.end method
