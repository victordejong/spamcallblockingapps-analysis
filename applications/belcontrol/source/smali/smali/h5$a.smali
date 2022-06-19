.class public Lh5$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh5;->p()Landroid/view/animation/Interpolator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ll4;


# direct methods
.method public constructor <init>(Lh5;Ll4;)V
    .locals 0

    iput-object p2, p0, Lh5$a;->a:Ll4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 3

    iget-object v0, p0, Lh5$a;->a:Ll4;

    float-to-double v1, p1

    invoke-virtual {v0, v1, v2}, Ll4;->a(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method
