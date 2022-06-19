.class public Lnd$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lud$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lnd;


# direct methods
.method public constructor <init>(Lnd;)V
    .locals 0

    iput-object p1, p0, Lnd$b;->a:Lnd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/fragment/app/Fragment;Lp9;)V
    .locals 1

    invoke-virtual {p2}, Lp9;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnd$b;->a:Lnd;

    invoke-virtual {v0, p1, p2}, Lnd;->O0(Landroidx/fragment/app/Fragment;Lp9;)V

    :cond_0
    return-void
.end method

.method public b(Landroidx/fragment/app/Fragment;Lp9;)V
    .locals 1

    iget-object v0, p0, Lnd$b;->a:Lnd;

    invoke-virtual {v0, p1, p2}, Lnd;->c(Landroidx/fragment/app/Fragment;Lp9;)V

    return-void
.end method
