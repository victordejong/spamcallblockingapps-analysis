.class public final Lap0$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lbm0$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lap0;->x(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    iput p1, p0, Lap0$d;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILandroid/content/Intent;)Z
    .locals 2

    iget v0, p0, Lap0$d;->a:I

    const/4 v1, 0x0

    invoke-static {v1}, Lap0;->l(Lpi0;)Lxo0;

    move-result-object v1

    invoke-static {v0, p1, p2, v1}, Lap0;->q(IILandroid/content/Intent;Lxo0;)Z

    move-result p1

    return p1
.end method
