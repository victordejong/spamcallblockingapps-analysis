.class public abstract Lzh0$l;
.super Lzh0$i0;
.source ""

# interfaces
.implements Lzh0$n;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzh0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "l"
.end annotation


# instance fields
.field public n:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lzh0$i0;-><init>()V

    return-void
.end method


# virtual methods
.method public i(Landroid/graphics/Matrix;)V
    .locals 0

    iput-object p1, p0, Lzh0$l;->n:Landroid/graphics/Matrix;

    return-void
.end method
