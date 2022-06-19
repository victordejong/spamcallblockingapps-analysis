.class public Landroidx/core/view/ac$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/ac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private final a:Landroidx/core/view/ac;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 1004
    new-instance v0, Landroidx/core/view/ac;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/core/view/ac;-><init>(Landroidx/core/view/ac;)V

    invoke-direct {p0, v0}, Landroidx/core/view/ac$b;-><init>(Landroidx/core/view/ac;)V

    return-void
.end method

.method constructor <init>(Landroidx/core/view/ac;)V
    .locals 0

    .line 1007
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1008
    iput-object p1, p0, Landroidx/core/view/ac$b;->a:Landroidx/core/view/ac;

    return-void
.end method


# virtual methods
.method public a()Landroidx/core/view/ac;
    .locals 1

    .line 1025
    iget-object v0, p0, Landroidx/core/view/ac$b;->a:Landroidx/core/view/ac;

    return-object v0
.end method

.method a(Landroidx/core/graphics/b;)V
    .locals 0

    return-void
.end method

.method b(Landroidx/core/graphics/b;)V
    .locals 0

    return-void
.end method
