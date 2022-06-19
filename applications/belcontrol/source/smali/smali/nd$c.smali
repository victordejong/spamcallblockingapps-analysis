.class public Lnd$c;
.super Ljd;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lnd;


# direct methods
.method public constructor <init>(Lnd;)V
    .locals 0

    iput-object p1, p0, Lnd$c;->b:Lnd;

    invoke-direct {p0}, Ljd;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .locals 2

    iget-object p1, p0, Lnd$c;->b:Lnd;

    iget-object p1, p1, Lnd;->o:Lkd;

    invoke-virtual {p1}, Lkd;->e()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Lhd;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    return-object p1
.end method
