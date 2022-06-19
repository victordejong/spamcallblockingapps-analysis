.class public Lw6$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Lw6;Lz5;Lo5;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object p1, p2, Lz5;->H:Ly5;

    invoke-virtual {p3, p1}, Lo5;->y(Ljava/lang/Object;)I

    iget-object p1, p2, Lz5;->I:Ly5;

    invoke-virtual {p3, p1}, Lo5;->y(Ljava/lang/Object;)I

    iget-object p1, p2, Lz5;->J:Ly5;

    invoke-virtual {p3, p1}, Lo5;->y(Ljava/lang/Object;)I

    iget-object p1, p2, Lz5;->K:Ly5;

    invoke-virtual {p3, p1}, Lo5;->y(Ljava/lang/Object;)I

    iget-object p1, p2, Lz5;->L:Ly5;

    invoke-virtual {p3, p1}, Lo5;->y(Ljava/lang/Object;)I

    return-void
.end method
