.class public Lia0$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lia0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:[I

.field public final b:Landroid/animation/Animator;

.field public c:Landroid/animation/Animator$AnimatorListener;


# direct methods
.method public constructor <init>([ILandroid/animation/Animator;Landroid/animation/Animator$AnimatorListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lia0$b;->a:[I

    iput-object p2, p0, Lia0$b;->b:Landroid/animation/Animator;

    iput-object p3, p0, Lia0$b;->c:Landroid/animation/Animator$AnimatorListener;

    return-void
.end method

.method public synthetic constructor <init>([ILandroid/animation/Animator;Landroid/animation/Animator$AnimatorListener;Lia0$a;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lia0$b;-><init>([ILandroid/animation/Animator;Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method


# virtual methods
.method public a()Landroid/animation/Animator$AnimatorListener;
    .locals 1

    iget-object v0, p0, Lia0$b;->c:Landroid/animation/Animator$AnimatorListener;

    return-object v0
.end method
