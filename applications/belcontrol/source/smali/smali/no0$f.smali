.class public final Lno0$f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lbm0$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lno0;->b0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILandroid/content/Intent;)Z
    .locals 1

    sget-object v0, Lbm0$b;->f:Lbm0$b;

    invoke-virtual {v0}, Lbm0$b;->a()I

    move-result v0

    invoke-static {v0, p1, p2}, Lno0;->V(IILandroid/content/Intent;)Z

    move-result p1

    return p1
.end method
