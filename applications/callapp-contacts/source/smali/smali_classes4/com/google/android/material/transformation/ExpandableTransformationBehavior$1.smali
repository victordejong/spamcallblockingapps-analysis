.class final Lcom/google/android/material/transformation/ExpandableTransformationBehavior$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/transformation/ExpandableTransformationBehavior;->a(Landroid/view/View;Landroid/view/View;ZZ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/transformation/ExpandableTransformationBehavior;


# direct methods
.method constructor <init>(Lcom/google/android/material/transformation/ExpandableTransformationBehavior;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/google/android/material/transformation/ExpandableTransformationBehavior$1;->a:Lcom/google/android/material/transformation/ExpandableTransformationBehavior;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 86
    iget-object p1, p0, Lcom/google/android/material/transformation/ExpandableTransformationBehavior$1;->a:Lcom/google/android/material/transformation/ExpandableTransformationBehavior;

    invoke-static {p1}, Lcom/google/android/material/transformation/ExpandableTransformationBehavior;->a(Lcom/google/android/material/transformation/ExpandableTransformationBehavior;)Landroid/animation/AnimatorSet;

    return-void
.end method
