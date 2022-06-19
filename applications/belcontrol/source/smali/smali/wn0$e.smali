.class public Lwn0$e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lfo0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwn0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field public final a:Lpm0;


# direct methods
.method public constructor <init>(Lpm0;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lgn0;->l(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lwn0$e;->a:Lpm0;

    return-void
.end method


# virtual methods
.method public a()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lwn0$e;->a:Lpm0;

    invoke-virtual {v0}, Lpm0;->a()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1

    iget-object v0, p0, Lwn0$e;->a:Lpm0;

    invoke-virtual {v0, p1, p2}, Lpm0;->d(Landroid/content/Intent;I)V

    return-void
.end method
