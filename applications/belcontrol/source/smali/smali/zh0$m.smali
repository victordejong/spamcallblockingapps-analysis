.class public Lzh0$m;
.super Lzh0$h0;
.source ""

# interfaces
.implements Lzh0$n;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzh0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "m"
.end annotation


# instance fields
.field public n:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lzh0$h0;-><init>()V

    return-void
.end method


# virtual methods
.method public i(Landroid/graphics/Matrix;)V
    .locals 0

    iput-object p1, p0, Lzh0$m;->n:Landroid/graphics/Matrix;

    return-void
.end method
