.class final Lcom/google/android/material/tabs/TabLayout$e$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/tabs/TabLayout$e;->a(ZII)V
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

    .line 3191
    iput-object p1, p0, Lcom/google/android/material/tabs/TabLayout$e$2;->b:Lcom/google/android/material/tabs/TabLayout$e;

    iput p2, p0, Lcom/google/android/material/tabs/TabLayout$e$2;->a:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 3199
    iget-object p1, p0, Lcom/google/android/material/tabs/TabLayout$e$2;->b:Lcom/google/android/material/tabs/TabLayout$e;

    iget v0, p0, Lcom/google/android/material/tabs/TabLayout$e$2;->a:I

    iput v0, p1, Lcom/google/android/material/tabs/TabLayout$e;->b:I

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 3194
    iget-object p1, p0, Lcom/google/android/material/tabs/TabLayout$e$2;->b:Lcom/google/android/material/tabs/TabLayout$e;

    iget v0, p0, Lcom/google/android/material/tabs/TabLayout$e$2;->a:I

    iput v0, p1, Lcom/google/android/material/tabs/TabLayout$e;->b:I

    return-void
.end method
