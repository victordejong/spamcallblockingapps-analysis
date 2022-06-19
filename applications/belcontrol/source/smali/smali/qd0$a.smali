.class public Lqd0$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lwd0$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lqd0;-><init>(Lqd0$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lqd0;


# direct methods
.method public constructor <init>(Lqd0;)V
    .locals 0

    iput-object p1, p0, Lqd0$a;->a:Lqd0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lxd0;Landroid/graphics/Matrix;I)V
    .locals 1

    iget-object v0, p0, Lqd0$a;->a:Lqd0;

    invoke-static {v0}, Lqd0;->e(Lqd0;)[Lxd0$g;

    move-result-object v0

    invoke-virtual {p1, p2}, Lxd0;->e(Landroid/graphics/Matrix;)Lxd0$g;

    move-result-object p1

    aput-object p1, v0, p3

    return-void
.end method

.method public b(Lxd0;Landroid/graphics/Matrix;I)V
    .locals 1

    iget-object v0, p0, Lqd0$a;->a:Lqd0;

    invoke-static {v0}, Lqd0;->d(Lqd0;)[Lxd0$g;

    move-result-object v0

    invoke-virtual {p1, p2}, Lxd0;->e(Landroid/graphics/Matrix;)Lxd0$g;

    move-result-object p1

    aput-object p1, v0, p3

    return-void
.end method
