.class public Lzh0$w0;
.super Lzh0$a1;
.source ""

# interfaces
.implements Lzh0$b1;
.implements Lzh0$n;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzh0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "w0"
.end annotation


# instance fields
.field public r:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lzh0$a1;-><init>()V

    return-void
.end method


# virtual methods
.method public i(Landroid/graphics/Matrix;)V
    .locals 0

    iput-object p1, p0, Lzh0$w0;->r:Landroid/graphics/Matrix;

    return-void
.end method
