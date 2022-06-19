.class public final synthetic Ly90;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lfa0$g;


# static fields
.field public static final synthetic a:Ly90;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Ly90;

    invoke-direct {v0}, Ly90;-><init>()V

    sput-object v0, Ly90;->a:Ly90;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAnimator()Landroid/animation/Animator;
    .locals 1

    invoke-static {}, Lfa0;->k()Landroid/animation/ValueAnimator;

    move-result-object v0

    return-object v0
.end method
