.class public final Lpc$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lqc$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lqc$a<",
        "Lub;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Landroid/graphics/Rect;)V
    .locals 0

    check-cast p1, Lub;

    invoke-virtual {p0, p1, p2}, Lpc$a;->b(Lub;Landroid/graphics/Rect;)V

    return-void
.end method

.method public b(Lub;Landroid/graphics/Rect;)V
    .locals 0

    invoke-virtual {p1, p2}, Lub;->m(Landroid/graphics/Rect;)V

    return-void
.end method
