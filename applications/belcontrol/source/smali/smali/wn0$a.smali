.class public Lwn0$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lbm0$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lwn0;->r(Lni0;Lpi0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lpi0;

.field public final synthetic b:Lwn0;


# direct methods
.method public constructor <init>(Lwn0;Lpi0;)V
    .locals 0

    iput-object p1, p0, Lwn0$a;->b:Lwn0;

    iput-object p2, p0, Lwn0$a;->a:Lpi0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILandroid/content/Intent;)Z
    .locals 2

    iget-object v0, p0, Lwn0$a;->b:Lwn0;

    iget-object v1, p0, Lwn0$a;->a:Lpi0;

    invoke-virtual {v0, p1, p2, v1}, Lwn0;->q(ILandroid/content/Intent;Lpi0;)Z

    move-result p1

    return p1
.end method
