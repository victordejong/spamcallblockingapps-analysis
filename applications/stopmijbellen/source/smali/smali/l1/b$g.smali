.class public Ll1/b$g;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ll1/b;->k(Landroid/view/ViewGroup;Ll1/n;Ll1/n;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private mViewBounds:Ll1/b$i;


# direct methods
.method public constructor <init>(Ll1/b;Ll1/b$i;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 2
    iput-object p2, p0, Ll1/b$g;->mViewBounds:Ll1/b$i;

    return-void
.end method
