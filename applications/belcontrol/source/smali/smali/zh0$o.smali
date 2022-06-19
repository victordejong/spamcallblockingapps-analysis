.class public Lzh0$o;
.super Lzh0$p0;
.source ""

# interfaces
.implements Lzh0$n;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzh0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "o"
.end annotation


# instance fields
.field public o:Ljava/lang/String;

.field public p:Lzh0$p;

.field public q:Lzh0$p;

.field public r:Lzh0$p;

.field public s:Lzh0$p;

.field public t:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lzh0$p0;-><init>()V

    return-void
.end method


# virtual methods
.method public i(Landroid/graphics/Matrix;)V
    .locals 0

    iput-object p1, p0, Lzh0$o;->t:Landroid/graphics/Matrix;

    return-void
.end method
