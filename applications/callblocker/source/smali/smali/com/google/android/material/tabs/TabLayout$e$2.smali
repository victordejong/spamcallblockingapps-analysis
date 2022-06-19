.class Lcom/google/android/material/tabs/TabLayout$e$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TabLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/tabs/TabLayout$e;->b(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/google/android/material/tabs/TabLayout$e;


# direct methods
.method constructor <init>(Lcom/google/android/material/tabs/TabLayout$e;I)V
    .locals 0

    .prologue
    .line 2996
    iput-object p1, p0, Lcom/google/android/material/tabs/TabLayout$e$2;->b:Lcom/google/android/material/tabs/TabLayout$e;

    iput p2, p0, Lcom/google/android/material/tabs/TabLayout$e$2;->a:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 2999
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$e$2;->b:Lcom/google/android/material/tabs/TabLayout$e;

    iget v1, p0, Lcom/google/android/material/tabs/TabLayout$e$2;->a:I

    iput v1, v0, Lcom/google/android/material/tabs/TabLayout$e;->a:I

    .line 3000
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$e$2;->b:Lcom/google/android/material/tabs/TabLayout$e;

    const/4 v1, 0x0

    iput v1, v0, Lcom/google/android/material/tabs/TabLayout$e;->b:F

    .line 3001
    return-void
.end method
